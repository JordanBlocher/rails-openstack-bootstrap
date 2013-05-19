#!/bin/sh

ROOTUID="0"

if [ "$(id -u)" -ne "$ROOTUID" ] ; then
    printf "This script must be executed with root privileges.\n"
    exit 1
elif [ $# -ne 1 ] ; then 
    printf "Usage: install TEAM_NUMBER.\n"
    exit 1 
fi

printf "Install Glance? (y/n)\n"
read OK
if [ "$OK" = "y" ] ; then
    break
    else
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
rm ./install/log/apt.log
touch ./install/log/apt.log
apt-get update >> ./install/log/apt.log
apt-get install -y  glance glance-client >> ./install/log/apt.log

PASSWORD=openstack
mysql -uroot -p$PASSWORD -e 'CREATE DATABASE glance';
mysql -uroot -p$PASSWORD -e "GRANT ALL PRIVILEGES ON glance.* TO 'glance'@'%';"
mysql -uroot -p$PASSWORD -e "SET PASSWORD FOR 'glance'@'%' = PASSWORD('openstack');"

sed -i "s#^sql_connection.*#sql_connection = mysql://glance:openstack@$IP/glance#" /etc/glance/glance-registry.conf
service glance-registry restart

sed -i 's/^default_store.*/default_store = swift/' /etc/glance/glance-api.conf
sed -i "s#^swift_store_auth_address.*#swift_store_auth_address = http://$IP:5000/v2.0/#" /etc/glance/glance-api.conf
sed -i 's/^swift_store_user.*/swift_store_user = service:swift/' /etc/glance/glance-api.conf
sed -i 's/^swift_store_key.*/swift_store_key = swift/' /etc/glance/glance-api.conf
sed -i 's/^swift_store_container.*/swift_store_container = glance/' /etc/glance/glance-api.conf

service glance-api restart

printf "Done!\n"

