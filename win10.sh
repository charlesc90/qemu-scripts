#!/bin/bash

chipset="q35"
vcpu="host"
memories="4096M"
bios="/usr/share/qemu/ovmf-x86_64-ms-4m.bin"
gpu="qxl"
dvd="Windows10_InsiderPreview_Client_x64_en-us_18343.iso"
disk="win10.qcow2"

qemu-kvm -machine ${chipset} -cpu ${vcpu} -m ${memories} -vga ${gpu} -cdrom ${dvd} ${disk}
