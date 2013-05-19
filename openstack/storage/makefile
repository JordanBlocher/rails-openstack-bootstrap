#!/bin/bash

storage:
	sudo ./install.sh 8


clean:
	sudo rm -fr /var/run/swift
	sudo rm -fr /etc/swift
	sudo rm -fr /etc/rdsyncd.conf
	sudo rm -fr /srv
	sudo rm -fr /usr/local/bin/remakerings
	sudo sed -i '/server ntp.ubuntu.com/,/fudge 127.127.1.0 stratum 10/d' /etc/ntp.conf
	sudo sed -i '/\/srv\/swift-disk \/mnt\/sdb1 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0/d' /etc/fstab
	sudo sed -i /etc/rc.local -e '/chown swift:swift \/var\/run\/swift/d'
	sudo sed -i /etc/rc.local -e '/chown swift:swift \/var\/cache\/swift*/d'
	sudo umount /mnt/sdb1
	sudo rm -fr /srv
	sudo rm -fr /mnt/sdb1


