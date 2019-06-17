#!/usr/bin/env bash

export PATH=$PATH:/sbin:/usr/sbin:/bin:/usr/bin
RESOLVCONF=$(type -p resolvconf)

interface=$1 
status=$2

if [[ ( "$interface" == "tun0" ) && ( "$status" == "down" ) ]]; then
    $RESOLVCONF -d "${interface}.inet"
fi
