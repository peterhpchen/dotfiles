#!/bin/zsh

DIRCOLORS_FILE="$DOTS/dircolors/packages/nord-dircolors/src/dir_colors"

if [ -r "$DIRCOLORS_FILE" ]; then
  eval $(dircolors "$DIRCOLORS_FILE")
fi
