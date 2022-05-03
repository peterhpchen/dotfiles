#!/bin/bash

export DOTFILES_TYPE="archlinux"

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$__dir"/_base.sh

__pkg_list=$__dir/docker-dev-base.archlinux.txt

# Pacman outs of the box

# Update Pacman
source "$DOTFILES_ROOT"/pacman/scripts/update.sh

# Install by list
source "$DOTFILES_ROOT"/_scripts/install-by-list.sh <"$__pkg_list"

# Symbolic link by list
source "$DOTFILES_ROOT"/_scripts/symlink-by-list.sh <"$__pkg_list"

# Symbolic link shell script by list
source "$DOTFILES_ROOT"/_scripts/symlink-shell-by-list.sh <"$__pkg_list"
