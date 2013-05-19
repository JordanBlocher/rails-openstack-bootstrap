#!/bin/sh
set -e

printf "Install OpenStack Cloud? (y/n)\n"
read OK
if [ "$OK" = "y" ] ; then
    break
    else
       exit 1
fi

ROOTUID="0"

if [ "$(id -u)" -ne "$ROOTUID" ] ; then
    printf "This script must be executed with root privileges.\n"
    exit 1
elif [ $# -ne 1 ] ; then 
    printf "Usage: install TEAM_NUMBER.\n"
    exit 1 
fi

# Team Number
TEAM=$1
x=$((($TEAM * 2)  + 170))

# IP Addresses
NETIP=192.168.$x.0
IP=192.168.$x.1
PIP=10.0.0.254
BCAST=192.168.0.0

printf "Installation for Team $TEAM. \n"
mkdir -p ./install/log
apt-get update > ./install/log/apt.log

printf "Configuring Public and Private Networks at $IP and $PIP.\n"
./install/network/config $IP $NETIP $BCAST
ifup eth1
ifup eth2
ping -c 1 192.168.130.101
if [ $? -ne 0 ]
then
	printf "Network config failed!\n"
	exit 1
fi

apt-get -y install rabbitmq-server nova-api nova-objectstore nova-scheduler nova-network nova-compute nova-cert glance qemu unzip python-software-properties python-novaclient >> ./install/log/apt.log
i=0
while [ $i -lt 4 ] 
do
    printf "Adding OpenStack PPA ... Choose (m) for Milestone release (b) for Bleeding Edge.\n"
    read PPA
    if [ "$PPA" = "m" ];
    then 
        #apt-add-repository ppa:openstack-ppa/milestone
        break
    elif [ "$PPA" = "b" ]; 
    then 
        #apt-add-repository ppa:openstack-ppa/bleeding-edge
        break
    elif [ $i -eq 3 ];
    then
        printf "Invalid input. Exiting.\n" 
        exit 1
    fi
    i=$(($i+1))
done   

printf "Adding Nova Database.\n"
./install/db/config
apt-get update >> ./install/log/apt.log
apt-get upgrade >> ./install/log/apt.log
apt-get -y install mysql-server >> ./install/log/apt.log
sed -i -e "s/127.0.0.1/$IP/g" /etc/mysql/my.cnf
service mysql restart
./install/db/user
./install/config/nova $IP
./install/config/service
./install/db/create

printf "Creating OpenStack Project.\n"
./install/nova
~/ssh/keypair openstack

printf "Publishing Cloud Image.\n"
wget http://uec-images.ubuntu.com/releases/precise/release/ubuntu-12.04-server-cloudimg-i386.tar.gz
apt-get -y install cloud-utils
cloud-publish-tarball ubuntu-12.04-server-cloudimg-i386.tar.gz images i386
nova-image-list
./install/network/secgroup $NETIP

printf "Done! Run nova-boot\n"
