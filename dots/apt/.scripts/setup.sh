#!/bin/sh

ln -s "$DOTS/apt/pkglist.txt" "$HOME"
sudo apt install -y $(cat pkglist.txt)
