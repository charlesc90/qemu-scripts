#!/usr/bin/bash

chipset="type=q35,kernel_irqchip=on,mem-merge=on"
vcpu="host"
multi="4,sockets=1,cores=4,threads=1"

efi="node-name=rom,driver=file,filename=/home/charlesc/qemu/OVMF_CODE.fd,read-only=true"
vars="node-name=efivars,driver=file,filename=/home/charlesc/qemu/OVMF_VARS.fd"

nd="user,ipv6=off,model=virtio-net-pci,mac=52:54:98:76:54:32"


ipm="ipmi-bmc-sim,id=ipmi0"
ik="isa-ipmi-kcs,bmc=ipmi0"

gpu='virtio'
gpuaccel="gtk,gl=off"

hd="/home/charlesc/qemu/Fedora-Server-KVM-38-1.6.x86_64.qcow2"

qemu-kvm		            	\
	-machine ${chipset}		\
	-cpu ${vcpu}			\
	-m 8192M			\
	-smp ${multi}			\
	-accel ${hyper}			\
	-blockdev ${efi}		\
	-blockdev ${vars}		\
	-nic ${nd}			\
    	-device ${ipm}			\
    	-device ${ik}			\
	-vga ${gpu}			\
	-display ${gpuaccel}		\
	-hda ${hd}			\
