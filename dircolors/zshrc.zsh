#!/bin/zsh

DIRCOLORS_FILE="$DOTFILES/dircolors/nord-dircolors/src/dir_colors"

test -r "$DIRCOLORS_FILE" && eval $(gdircolors "$DIRCOLORS_FILE")
