#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source $__dir/_base.sh

# Pacman outs of the box

# Update Pacman
source $DOTFILES_ROOT/pacman/scripts/update.sh

# Install Zsh
source $DOTFILES_ROOT/zsh/scripts/install.pacman.sh
