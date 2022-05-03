#!/bin/bash

echo "Setup package manager"
if [[ "$(uname)" == "Darwin" ]]; then
  echo "Configuring homebrew"
  bash ${DOTFILES_ROOTS:-~/.dotfiles}/homebrew/scripts/setup.sh
elif [ -f "/etc/arch-release" ]; then
  echo "Configuring pacman"
  bash ${DOTFILES_ROOTS:-~/.dotfiles}/pacman/scripts/setup.sh
elif [[ "$(uname)" == "Linux" ]]; then
  echo "Configuring apt"
  bash ${DOTFILES_ROOTS:-~/.dotfiles}/apt/scripts/setup.sh
fi
