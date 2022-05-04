#!/bin/bash

__config_name=$1

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$__dir"/_base.sh
__pkg_list="$DOTFILES_ROOT"/_configs/"$__config_name".txt

# Install by list
source "$DOTFILES_ROOT"/_scripts/install-by-list.sh <"$__pkg_list"

# Symbolic link by list
source "$DOTFILES_ROOT"/_scripts/symlink-by-list.sh <"$__pkg_list"

# Symbolic link shell script by list
source "$DOTFILES_ROOT"/_scripts/symlink-shell-by-list.sh <"$__pkg_list"
