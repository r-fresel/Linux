#!/bin/sh

# ############################
# Uninstall LXQT on Arch Linux
# ############################

uninstall_lxqt () {
	pacman -Rcns lxqt
}

uninstall_lxqt
