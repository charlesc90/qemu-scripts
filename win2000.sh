#!/bin/bash

qemu-system-i386 -enable-kvm -cpu host -m 1024M -netdev user,id=n0 -device rtl8139,netdev=n0 \
	-bios /home/charlesc/storage/qemu/bios.bin					     \
	-hda /home/charlesc/storage/virtpool/win2000.qcow2                                   \
	-vga cirrus
