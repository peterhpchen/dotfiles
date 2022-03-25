#!/bin/zsh

if [[ ! "$(command -v bat)" ]]; then
  # https://github.com/sharkdp/bat#highlighting-theme
  export BAT_THEME="Nord"
fi
