#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "bat installer"

if [[ "$(uname)" == "Darwin" ]]; then
  bash $__dir/install/brew.sh
elif [[ -f "/etc/arch-release" ]]; then
  bash $__dir/install/pacman.sh
fi
