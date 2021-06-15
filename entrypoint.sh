#!/bin/sh

test -z $1 \
    && echo "Missing MAC address (arg 1)." \
    && exit 1

mac=$(echo $1 | sed 's/://g')
broadcast=${2:-192.168.1.255}
port=${3:-9}

magicPacketHex() {
    for i in $(seq 1 12); do printf 'f'; done
    for j in $(seq 1 16); do printf $1; done
}

magicPacketHex $mac \
    | xxd -prc 102 \
    | socat -dd -v - udp-datagram:$broadcast:$port,broadcast
