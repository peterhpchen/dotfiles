#!/bin/bash

echo "Setup OS"
if [[ "$(uname)" == "Darwin" ]]; then
  echo "Configuring macOS"
  source ${DOTFILES_ROOTS:-~/.dotfiles}/macos/scripts/setup.sh
fi
