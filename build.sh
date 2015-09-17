#!/bin/sh

if [ $# -lt 1 ]; then
    echo "usage: $0 <arch>" >&2
    exit 1
fi

make

ARCHES=$@

echo "[*] Preparing to build afl-qemu-trace for $ARCHES"

cd qemu_mode
./build_qemu_support.sh $ARCHES
