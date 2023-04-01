#!/bin/bash
# This script sets up Linux environment for the user

# Check if operating system type is Linux
if [[ $(uname) != "Linux" ]]; then
	echo "Error: This script only works on Linux" >> linuxsetup.log
	exit 1
fi

# Create .TRASH directory in home directory
mkdir -p ~/".TRASH"

# Rename .vimrc file to .bup vimrc if it exists
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup\ vimrc
	echo "Current .vimrc file was changed to '.bup vimrc'" >> linuxsetup.log
fi

# Redirect etc/vimrc to .vimrc in home directory
sudo cat /etc/vimrc > ~/.vimrc

# Add statement to .bashrc file
echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc
