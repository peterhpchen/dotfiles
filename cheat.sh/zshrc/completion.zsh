#!/bin/zsh

# Completion definitions for cheat.sh
if [[ ! -f $HOME/.zsh.d/_cht ]]; then
  if [[ ! -d "$HOME/.zsh.d)" ]]; then
    mkdir -p "$HOME/.zsh.d"
  fi
  curl -s https://cheat.sh/:zsh > $HOME/.zsh.d/_cht
fi
fpath=(~/.zsh.d/ $fpath)
