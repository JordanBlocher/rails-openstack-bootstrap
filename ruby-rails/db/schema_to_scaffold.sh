#!/bin/bash

SCHEMA=$1
NUM_TABLES=$2

for i in {20..$NUM_TABLES}
do
  echo $i
  scaffold -p /home/frags/Dropbox/cs/cloud2/db/$SCHEMA -c <<< $i
  `xclip -selection c -o`
done

