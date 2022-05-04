#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "fzf installer"

echo "Installing fzf"
if [[ "$(uname)" == "Darwin" ]]; then
  # Just for zsh, add fzf
  # https://github.com/junegunn/fzf/blob/master/install
  "$(brew --prefix)"/opt/fzf/install --key-bindings --completion --update-rc --no-bash --no-fish
elif [[ -f "/etc/arch-release" ]]; then
  bash $__dir/install/pacman.sh
fi
