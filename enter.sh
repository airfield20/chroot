#!/bin/bash

SUITE=precise

MAP="/proc /sys /dev /run /home/gijs"


for i in $MAP; do
    sudo mount -o bind $i ${SUITE}$i
done

sudo chroot ${SUITE} /bin/bash

for i in $MAP; do
    sudo umount  ${SUITE}$i
done

