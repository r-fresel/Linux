#!/bin/sh

# ################################
# Install KDE Plasma on Arch Linux
# ################################


check_desktop_environment () {
	echo $XDG_CURRENT_DESKTOP
}

check_if_kde_plasma_is_installed () {
	seems_to_be_installed=$(\
		pacman -Q | \
		grep -i plasma > /dev/null 2>&1; \
		echo $?)
	if [ $seems_to_be_installed = 0 ]; then
		echo "KDE Plasma seems to be installed."
	fi
}

update_repositories () {
	# syncronize the package databases,
	# upgrade all installed packages
	pacman -Syu
}

install_kde_plasma () {
	pacman -S --noconfirm \
		plasma \
		plasma-x11-session
}


check_desktop_environment
check_if_kde_plasma_is_installed
update_repositories
install_kde_plasma
