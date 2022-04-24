#!/bin/bash

echo "zsh installer"

echo "Installing zsh"
pacman -S zsh

echo "Set zsh as default"
chsh -s $(which zsh) $(whoami)
