#!/bin/zsh

if [[ -f "/etc/arch-release" ]]; then
elif [[ "$(uname)" == "Linux" ]]; then
  alias bat="batcat"
fi
