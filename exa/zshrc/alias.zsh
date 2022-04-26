#!/bin/zsh

# https://github.com/zimfw/exa/blob/bab903d6745f87a9516c63505e19257ed3409131/init.zsh
if [[ $(command -v exa) ]]; then
  alias ls='exa --group-directories-first'
fi
