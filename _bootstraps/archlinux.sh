#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Pacman out of the box

# Update Pacman
source $__dir/.dotfiles/pacman/scripts/update.sh

# Install Zsh
source $__dir/.dotfiles/zsh/scripts/install.pacman.sh

# Install neofetch
#source $__dir/.dotfiles/neofetch/install.pacman.sh
