#!/bin/bash

SUITE=precise

sudo mount -o bind /proc ${SUITE}/proc
sudo mount -o bind /sys ${SUITE}/sys
sudo mount -o bind /dev ${SUITE}/dev
sudo mount -o bind /run ${SUITE}/run
sudo mount -o bind /home/gijs ${SUITE}/home/gijs

sudo chroot ${SUITE} /bin/bash

sudo umount ${SUITE}/proc
sudo umount ${SUITE}/sys
sudo umount ${SUITE}/dev
sudo umount ${SUITE}/run
sudo umount ${SUITE}/build
