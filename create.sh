#!/bin/bash

SUITE=precise
TARGET=${SUITE}

sudo debootstrap \
    --components=main,universe,multiverse \
    ${SUITE} ${TARGET} \
    http://za.archive.ubuntu.com/ubuntu

