#!/bin/zsh

# Completion definitions for cheat.sh
if [[ ! -f $HOME/.zsh.d/_cht ]]; then
  curl -s https://cheat.sh/:zsh > $HOME/.zsh.d/_cht
fi
fpath=(~/.zsh.d/ $fpath)
