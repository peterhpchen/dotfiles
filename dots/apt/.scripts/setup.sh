#!/bin/sh

ln -s "$DOTS/apt/pkglist.txt" "$HOME"
apt update
apt install -y $(cat "$HOME/pkglist.txt")
