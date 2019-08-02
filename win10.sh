#!/bin/bash

chipset="type=q35,kernel_irqchip=on,mem-merge=on"
vcpu="host"
hyper="kvm,thread=multi"
memories="8192M"
efi="/home/charlesc/kvm/ovmf-x86_64.bin"
gpu="virtio"
gpuaccel="gtk,gl=on"
nets="user,ipv6=off,model=virtio"
dvd="/home/charlesc/kvm/win10.iso"
disk="/home/charlesc/kvm/win10.qcow2"

qemu-kvm -machine ${chipset} -cpu ${vcpu} -accel ${hyper} -m ${memories} \
  -bios ${efi} -vga ${gpu} -display ${gpuaccel} -nic ${nets}             \
  -cdrom ${dvd} -boot d ${disk}
