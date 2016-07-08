#!/bin/bash

if [ -z "$1" ]; then
    SUITE=xenial
else
    SUITE=$1
fi

TARGET=${SUITE}

sudo debootstrap \
    --components=main,universe,multiverse,restricted \
    --arch=amd64 \
    ${SUITE} ${TARGET} \
    http://za2.archive.ubuntu.com/ubuntu

