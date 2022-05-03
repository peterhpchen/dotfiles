#!/bin/bash

export DOTFILES_TYPE="macos"

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$__dir"/_base.sh

__pkg_list=$__dir/macos.txt

# Setup Homebrew
source "$DOTFILES_ROOTS"/homebrew/scripts/setup.sh

# Install by list
source "$DOTFILES_ROOT"/_scripts/install-by-list.sh <"$__pkg_list"

# Symbolic link by list
source "$DOTFILES_ROOT"/_scripts/symlink-by-list.sh <"$__pkg_list"

# Symbolic link shell script by list
source "$DOTFILES_ROOT"/_scripts/symlink-shell-by-list.sh <"$__pkg_list"

# Setup macOS
source "$DOTFILES_ROOTS"/macos/scripts/setup.sh
