#!/bin/bash

# This script uses qemu and KVM to spin up a VM
# qemu-kvm [options] [disk_image]
# adjust these variables according to your environment
# q35 is the newest chipset available for x86_64
# there are several bioses/efis in the /usr/share/qemu directory

chipset="q35"
vcpu="host"
memories="2048M"
gpu="qxl"
efi="/usr/share/qemu/ovmf-x86_64-opensuse.bin"
boots="openSUSE-Tumbleweed-JeOS.x86_64-15.1.0-kvm-and-xen-Build4.1.qcow2"

# initialize the vm
qemu-kvm -machine ${chipset} -cpu ${vcpu} -m ${memories} -vga ${gpu} -bios ${efi} -boot d ${boots}
