#!/bin/bash

SUITE=trusty
TARGET=${SUITE}

sudo debootstrap \
    --components=main,universe,multiverse,restricted \
    ${SUITE} ${TARGET} \
    http://za2.archive.ubuntu.com/ubuntu

