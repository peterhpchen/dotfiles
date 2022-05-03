#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source $__dir/_base.sh

echo "Setup package manager"
if [[ "$(uname)" == "Darwin" ]]; then
  echo "Configuring homebrew"
  bash $DOTFILES_ROOT/homebrew/scripts/setup.sh
elif [ -f "/etc/arch-release" ]; then
  echo "Configuring pacman"
  bash $DOTFILES_ROOT/pacman/scripts/setup.sh
elif [[ "$(uname)" == "Linux" ]]; then
  echo "Configuring apt"
  bash $DOTFILES_ROOT/apt/scripts/setup.sh
fi
