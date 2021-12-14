#!/bin/zsh

# Completion tab highlight
# https://stackoverflow.com/a/29197217/9265131
zstyle ':completion:*' menu select

# Set colors to completion options
if [ -n $LS_COLORS ]; then
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi
