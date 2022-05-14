#!/bin/bash

if [[ -f "/etc/arch-release" ]]; then
  pacman -S --noconfirm stylua
fi
