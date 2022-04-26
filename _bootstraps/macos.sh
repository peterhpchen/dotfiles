#!/bin/bash

export DOTFILES_TYPE="macos"

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$__dir"/_base.sh

# Set requirements.txt
source "$DOTFILES_ROOT/_scripts/set-requirements.sh" "$__dir/macos.txt"
