#!/bin/bash

echo "zsh installer"

echo "Set zsh as default"
sudo chsh -s $(which zsh) $(whoami)
