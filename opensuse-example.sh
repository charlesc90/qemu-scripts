chipset="type=q35,kernel_irqchip=on,mem-merge=on"
vcpu="host"
multi="4,sockets=4,cores=1,threads=1"
hyper="kvm"
memories="8192M"
efi="/home/charlesc/pool/OVMF_CODE.fd"
gpu="virtio"
gpuaccel="gtk,gl=on"
nets="user,model=virtio-net-pci"
sound="alsa,id=example,out.channels=1"
disk="openSUSE-Tumbleweed-Minimal-VM.x86_64-kvm-and-xen.qcow2"

qemu-kvm					          
	-machine ${chipset} \			
	-cpu ${vcpu} \				      
	-smp ${multi} \				      
	-accel ${hyper} \ 			    
	-m ${memories} \   			    
	-nic ${nets} \				      
	-pflash ${efi} \				    
  	-vga ${gpu} \ 				      
  	-display ${gpuaccel} \ 		  
  	-nic ${nets} \		      
  	-audiodev ${sound} \                      
  	-boot d ${disk}	\	
