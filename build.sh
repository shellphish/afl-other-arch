#!/bin/sh

if [ $# != 1 ]; then
    echo "usage: $0 <arch>" >&2
    exit 1
fi

make

ARCH="$1"

echo "[*] Preparing to build afl-qemu-trace for $ARCH"

cd qemu_mode
./build_qemu_support.sh $ARCH
