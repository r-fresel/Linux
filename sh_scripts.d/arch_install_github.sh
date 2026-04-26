#!/bin/sh

# ##########################
# Install Git and GitHub CLI
# ##########################


install_git () {
	pacman -S --noconfirm git
}

install_github_cli () {
	pacman -S --noconfirm github-cli
}


install_git
install_github_cli
