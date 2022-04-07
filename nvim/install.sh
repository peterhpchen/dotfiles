#!/bin/bash

echo "nvim installer"

if [[ ! "$(command -v nvim)" ]]; then
  echo "Installing nvim."
  sudo add-apt-repository --yes ppa:neovim-ppa/stable
  sudo apt update
  sudo apt install --yes neovim
else
  echo "nvim insatlled."
fi
