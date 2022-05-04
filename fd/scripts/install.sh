#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "fd installer"

if [[ -f "/etc/arch-release" ]]; then
  bash $__dir/install/pacman.sh
fi
