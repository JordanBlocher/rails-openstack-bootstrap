#!/bin/bash
set -e
printf "Install OpenStack Storage? (y/n)\n"
read OK
if [ "$OK" != "y" ] ; then
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

rm -f ./install/log/apt.log
touch ./install/log/apt.log
rm -f ./install/log/sed.log
touch ./install/log/sed.log


#printf "Adding Swift PPA.\n"
#add-apt-repository ppa:swift-core/release
apt-get update >> ./install/log/apt.log
apt-get install -y  swift python-swift swift-proxy swift-account swift-container swift-object memcached xfsprogs curl python-coverage python-dev python-nose python-setuptools python-simplejson python-xattr sqlite3 xfsprogs python-eventlet python-greenlet python-pastedeploy python-netifaces python-pip python-mock ntp>> ./install/log/apt.log
sudo pip install mock >> ./install/log/apt.log

# Replace ntp.ubuntu.com with NTP server on localhost
sed '/server ntp.ubuntu.com/,/fudge 127.127.1.0 stratum 10/d' -i /etc/ntp.conf > ./install/log/sed.log
printf "
server ntp.ubuntu.com
server 127.127.1.0
fudge 127.127.1.0 stratum 10
" >> /etc/ntp.conf

service ntp restart
apt-get -y install python-software-properties

# Create a new partition
printf "Creating a new partition.\n"
mkdir -p /srv
truncate -s 1GB /srv/swift-disk
mkfs.xfs -f -i size=1024 /srv/swift-disk
mkdir -p /mnt/sdb1

sed '/\/srv\/swift-disk \/mnt\/sdb1 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0/d' -i /etc/fstab > ./install/log/sed.log
printf "
/srv/swift-disk /mnt/sdb1 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0
" >> /etc/fstab

mount /mnt/sdb1
printf "Mounted /mnt/sdb1.\n"

mkdir -p /mnt/sdb1/{1..4}
chown swift:swift /mnt/sdb1/*
ln -fs /mnt/sdb1/{1..4} /srv
mkdir -p /etc/swift/{object-server,container-server,account-server}
for S in {1..4}
do
	mkdir -p /srv/${S}/node/sdb${S}
done
mkdir -p /var/run/swift
chown -R swift:swift /etc/swift /srv/{1..4}/ /var/run/swift

# Start on boot
sed -i /etc/rc.local -e '/chown swift:swift \/var\/run\/swift/d'
sed -i /etc/rc.local -e '/mkdir -p \/var\/run\/swift*/d'
sed -i /etc/rc.local -e 's/exit 0/mkdir -p \/var\/run\/swift\nchown swift:swift \/var\/run\/swift\nexit 0/'

# Configure
printf "Configuring Server.\n"
./install/config/rsync
./install/config/service
./install/config/proxy

# Create Virtual nodes
printf "Creating virtual nodes.\n"
./install/config/account
./install/config/container
./install/config/object

# Create Rings
printf "Creating Storage ring.\n"
rm -f /etc/swift/*.builder /etc/swift/*.ring.gz /etc/swift/backups/*.builder /etc/swift/backups/*.ring.gz
cp ./install/remakerings /usr/local/bin/
chmod +x /usr/local/bin/remakerings
/usr/local/bin/remakerings

# Fix swift startup problems
printf "Patching Swift Service start scripts\n"
sed -i -e 's#-f "/etc/swift/account-server.conf"#-d "/etc/swift/account-server"#' /etc/init/swift-account.conf
sed -i -e 's#-f "/etc/swift/container-server.conf"#-d "/etc/swift/container-server"#' /etc/init/swift-container.conf
sed -i -e 's#-f "/etc/swift/object-server.conf"#-d "/etc/swift/object-server"#' /etc/init/swift-object.conf

# Start Swift Service
printf "Starting Swift Service.\n"
service swift-account restart
service swift-object restart
service swift-container restart
service swift-proxy restart

printf "Done! Run tests.\n"






