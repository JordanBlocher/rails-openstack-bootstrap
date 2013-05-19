#!/bin/bash

x=10

# IP Addresses
NETIP=192.168.$x.0
IP=192.168.$x.1
PIP=10.0.0.254
BCAST=192.168.0.0

storage:
	sudo ./install.sh 10


clean:
	printf "" > install/log/apt.log
	printf "" > install/log/sed.log
	sudo rm -fr /etc/nova/nova.conf
	sudo sed -i -e "/# The loopback network interface\nauto lo\niface lo inet loopback\n# The primary network interface\nauto eth0\niface eth0 inet dhcp\n# Public Interface\nauto eth1\niface eth1 inet static\n\taddress $IP\n\tnetmask 255.255.0.0\n\tnetwork $NETIP\n\tbroadcast $BCAST/d" /etc/network/interfaces
	sudo sed -i -e "/# Private Interface\nauto eth2\niface eth2 inet manual\n\tup ifconfig eth2 up/d" /etc/network/interfaces
	sudo sed -i -e "/--libvirt_type=quemu/d" /etc/nova/nova-compute.conf
	sudo mysql -u root -p$(MYSQL_PASS) -e 'DROP DATABASE nova;'
	sudo mysql -u root -p$(MYSQL_PASS) -e 'DROP USER nova;'
	sudo rm -fr ssh/keys/* /home/team10/openstack
