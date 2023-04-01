#!/bin/bash
# This script undoes the changes made by the linux.sh script

# Remove .vimrc file in home directory if it exists
if [ -f ~/.vimrc ]; then
	rm -r ~/.vimrc
fi

# Remove line 'source ∼/.dotfiles/etc/bashrc custom' from .bashrc file in home directory
gsed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' ~/.bashrc

# Remove .TRASH directory in home directory if it exists
if [ -d ~/".TRASH" ]; then
	rm -r ~/".TRASH"
fi
