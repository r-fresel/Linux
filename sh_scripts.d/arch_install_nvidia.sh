#!/bin/sh

# ############################################
# Install NVIDIA RTX 2060 Driver on Arch Linux
# ############################################


check_gpu_model () {
	lspci | grep -i nvidia
}

install_driver_package () {
	pacman -S nvidia-open \
		  nvidia-utils \
		  nvidia-settings
}


install_driver_package
