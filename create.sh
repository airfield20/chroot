#!/bin/bash

if [ -z "$1" ]; then
    SUITE=trusty
else
    SUITE=$1
fi

TARGET=${SUITE}

sudo debootstrap \
    --components=main,universe,multiverse,restricted \
    ${SUITE} ${TARGET} \
    http://za2.archive.ubuntu.com/ubuntu

