# qemu-scripts
bash scripts for qemu and libvirt

# Important notes:

Virtualization needs to be enabled in your EFI/BIOS for qemu-kvm to work properly. These scripts will probably still boot a VM, but performance will be very poor.

libvirt generally uses the cpu model that is most similar to the host's, while these scripts use the host's

Using absolute filepaths is a good idea.

It seems that there are some devices getting initialized by default, networking works without defining network interfaces. I'll include proper definitions for network interfaces soon.

I've booted/installed Windows 10 with the win10.sh script. 

More to come with Windows 11 :)

I also have a working Windows 2000 server using the win2000.sh script. The cirrus VGA drivers and realtek network drivers work.

I used qemu-img to create all of the qcow2 hdds.
