#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "nvim installer"

if [[ "$DOTFILES_TYPE" == "archlinux" ]]; then
  bash $__dir/install/pacman.sh
elif [[ ! "$(command -v nvim)" ]]; then
  echo "Installing nvim."
  sudo add-apt-repository --yes ppa:neovim-ppa/stable
  sudo apt update
  sudo apt install --yes neovim
else
  echo "nvim insatlled."
fi
