# My Dotfiles

# Repository Overview

This repository contains a set of configuration files and scripts that can be used to set up a Linux environment according to the author's preferences. The repository includes four files:

* `README.md`: Provides an overview of the repository and its contents.
* `Makefile`: Automates the setup and cleanup process by defining two targets, `linux` and `clean`.
* `bin/linux.sh`: Configures the Linux environment by creating a `.TRASH` directory, setting up custom Vim settings, and adding a custom Bash configuration to `.bashrc`.
* `bin/cleanup.sh`: Undoes the changes made by `linux.sh` script by removing the `.vimrc` file, removing the custom Bash configuration from `.bashrc`, and removing the `.TRASH` directory.

## .vimrc Configuration

The `.vimrc` file included in this repository sets up a few custom configurations for Vim, including:

* Syntax highlighting
* Line numbers
* Mouse support
* Relative line numbers
* Automatic indentation
* Soft wrapping

## .bashrc Configuration

The `.bashrc` file included in this repository adds a few custom configurations to the Bash shell, including:

* Custom prompt with Git information
* Aliases for common commands
* History settin

These are my dotfile configuration files for different software in Bash.

## .vimrc

This is my custom .vimrc configuration for Vim.

## .bashrc

This is my custom .bashrc configuration for Bash.
