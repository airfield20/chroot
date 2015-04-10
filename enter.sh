#!/bin/bash

if [ -z "$1" ]; then
    SUITE=trusty 
else
    SUITE=$1
fi

MAP="/proc /sys /dev /run /home/gijs"

for i in $MAP; do
    sudo mount -o bind $i ${SUITE}$i
done

sudo chroot ${SUITE} /usr/bin/sudo -u gijs -H bash

for i in $MAP; do
    sudo umount  ${SUITE}$i
done

