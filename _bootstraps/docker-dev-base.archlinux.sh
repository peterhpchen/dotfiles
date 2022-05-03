#!/bin/bash

export DOTFILES_TYPE="archlinux"

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$__dir"/_base.sh

# Pacman outs of the box

# Update Pacman
source "$DOTFILES_ROOT"/pacman/scripts/update.sh
echo "updated pacman"

pkg_list=$__dir/docker-dev-base.archlinux.txt

# Install by list
source "$DOTFILES_ROOT"/_scripts/install-by-list.sh <$pkg_list
echo "installed"

# Symbolic link by list
source "$DOTFILES_ROOT"/_scripts/symlink-by-list.sh <$pkg_list
echo "symlinked"

# Symbolic link shell script by list
source "$DOTFILES_ROOT"/_scripts/symlink-shell-by-list.sh <$pkg_list
echo "shelled"
