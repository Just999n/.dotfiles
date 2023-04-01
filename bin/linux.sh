#!/bin/bash

exec >> linuxsetuplog

if [[ -f ~/.vimrc ]]; then
  rm ~/.vimrc
fi

if [[ -d ~/TRASH ]]; then
  rm -r ~/TRASH
fi

if [[ $(uname) != "Linux" ]]; then
  echo "Error: This script only works on Linux systems." >&2
  exit 1
fi

if [[ ! -d ~/TRASH ]]; then
  mkdir ~/TRASH
fi

if [[ -f ~/.vimrc ]]; then
  mv ~/.vimrc ~/.bupvimrc
  echo "Your current vimrc file has been changed to .bupvimrc" >&2
fi

cp /etc/vimrc ~/.vimrc

echo "source ~/dotfiles/etc/bashrc custom" >> ~/.bashrc

exit 0
