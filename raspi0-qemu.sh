#!/usr/bin/bash

qemu-system-arm
  -machine raspi0 -kernel kernel.img -dtb bcm2708-rpi-zero-w.dtb -no-reboot -usbdevice keyboard								                                  \
  -append "earlycon=pl011,0x20201000 console=ttyAMA1,115200 root=PARTUUID=4c4e106f-02 initcall_blacklist=bcm2835_pm_driver_init rw rootwait" 		\
  -drive "file=pi.img,format=raw,index=0,media=disk"
