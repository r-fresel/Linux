#!/bin/sh

# ###################################
# Install plocate and update database
# ###################################

install_plocate () {
	pacman -S --noconfirm plocate
}

update_database () {
	updatedb
}

install_plocate
update_database
