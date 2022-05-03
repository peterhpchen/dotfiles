#!/bin/bash

echo "Pacman Installer"
if [[ -f "/etc/arch-release" ]]; then
  echo "Pacman outs of the box"
  if [[ "$(command -v pacman)" ]]; then
    echo "Update Pacman"
    pacman -Sy
  fi
fi
