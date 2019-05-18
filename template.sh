#!/bin/bash

# This script uses qemu and KVM to spin up a VM
# qemu-kvm [options] [disk_image]
# Ncurses-based interface to initialize variables

# Initialize the VM
qemu-kvm -machine q35 -cpu host -m size=2048M,slots=2,maxmem=4096M          \
    -blockdev driver=qcow2,node-name=hda,file=/home/charlesc/kvm/qemu.qcow2 \
    -vga virtio                                                             \
    -netdev bridge,id=n1 -device virtio-net,netdev=n1                       \
    -boot c
