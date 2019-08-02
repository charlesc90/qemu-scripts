#!/bin/bash

chipset="-machine type=q35,kernel_irqchip=on,mem-merge=on"
cpu="-cpu host"
hyper="-accel kvm,thread=multi"
efi="-bios /usr/share/qemu/ovmf-x86_64.bin"
memories="-m 8192"
gpu="-vga virtio"
gpuaccel="-display gtk,gl=on"
nets="-nic user,ipv6=off,model=virtio"
dvd="-cdrom /home/charlesc/kvm/android-x86_64-8.1-r2-k49.iso"
disk="/home/charlesc/kvm/android.qcow2"

qemu-kvm ${chipset} ${cpu} ${hyper} ${efi} ${memories} ${gpu} ${gpuaccel} ${nets} ${dvd} ${disk}
