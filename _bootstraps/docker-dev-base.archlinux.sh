#!/bin/bash

export DOTFILES_TYPE="archlinux"

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$__dir"/_base.sh

# Set requirements.txt
source "$DOTFILES_ROOT/_scripts/set-requirements.sh" "$__dir/docker-dev-base.archlinux.txt"

# Pacman outs of the box

# Update Pacman
source "$DOTFILES_ROOT"/pacman/scripts/update.sh

# Install by list
source "$DOTFILES_ROOT"/_scripts/install-by-list.sh <"$__dir"/docker-dev-base.archlinux.txt

# Symbolic link by list
source "$DOTFILES_ROOT"/_scripts/symlink-by-list.sh <"$__dir"/docker-dev-base.archlinux.txt
