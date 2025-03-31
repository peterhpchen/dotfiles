#!/bin/sh

ln -s "$DOTS/apt/pkglist.txt" "$HOME"
sudo apt update
sudo apt install -y $(cat "$HOME/pkglist.txt")
