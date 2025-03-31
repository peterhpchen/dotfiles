#!/bin/sh

ln -s "$DOTS/snapcraft/pkglist.txt" "$HOME"
sudo snap install -y $(cat "$HOME/pkglist.txt")
