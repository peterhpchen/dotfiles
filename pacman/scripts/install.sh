#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Pacman Installer"
if [[ -f "/etc/arch-release" ]]; then
  echo "Pacman outs of the box"
  if [[ "$(command -v pacman)" ]]; then
    echo "Update Pacman"
    pacman -Sy
    echo "Pacman install misc packages"
    pacman -S --noconfirm --needed - <"$__dir"/pkglist.txt
  fi
fi
