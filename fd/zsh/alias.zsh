#!/bin/zsh

if [[ $(command -v fd) ]]; then
  # need sync with telescope.nvim
  alias fd='fd --type=file --hidden --exclude=.git'
fi
