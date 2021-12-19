#!/bin/bash

echo "packer.nvim installer"

if [[ ! -d  ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]]; then
  echo "Installing packer.nvim"
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
else
  echo "packer.nvim was installed."
fi
