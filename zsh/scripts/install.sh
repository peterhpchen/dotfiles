#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "zsh installer"

if [[ -f "/etc/arch-release" ]]; then
  bash $__dir/install/pacman.sh
fi

source "$__dir"/set-default.sh
