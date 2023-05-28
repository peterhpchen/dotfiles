#!/bin/sh

ln -s "$DOTS/pacman/pkglist.txt" "$HOME"
pacman -S --noconfirm --needed - <"$HOME/pkglist.txt"
