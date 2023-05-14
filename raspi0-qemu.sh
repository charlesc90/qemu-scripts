#!/usr/bin/bash

qemu-system-arm \
	-machine raspi0	\
	-kernel kernel.img \
	-dtb bcm2708-rpi-zero-w.dtb \
	-device usb-kbd \
	-no-reboot \
	-append "earlycon=pl011,0x20201000 console=ttyAMA0,115200  dwc_otg.fiq_fsm_enable=0 dwc_otg.fiq_enable=0 dwc_otg.nak_holdoff=0 root=/dev/mmcblk0p2 initcall_blacklist=bcm2835_pm_driver_init arm_boost=1 rootwait" \
	-drive "file=pi.img,format=raw,index=0,media=disk"
