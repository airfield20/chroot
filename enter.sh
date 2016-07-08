#!/bin/bash

if [ -z "$1" ]; then
    SUITE=xenial 
else
    SUITE=$1
fi

MAP="/proc /sys /dev /run /home/gijs /build /kern"

for i in $MAP; do
    sudo mount -o bind $i ${SUITE}$i
done

sudo chroot ${SUITE} /usr/bin/sudo -u gijs -H bash

for i in $MAP; do
    sudo umount  ${SUITE}$i
done

