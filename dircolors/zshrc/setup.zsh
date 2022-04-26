#!/bin/zsh

if [[ "$(uname)" == "Darwin" ]]; then
  # Mac needs to use gdircolors to set $LS_COLORS
  # https://github.com/gibbling/dircolors
  eval $(gdircolors -b $HOME/.dir_colors)
elif [[ "$(uname)" == "Linux" ]]; then
  eval $(dircolors $HOME/.dir_colors)
fi
