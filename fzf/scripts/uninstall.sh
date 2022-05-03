#!/bin/bash

echo "fzf uninstaller"

if [[ "$(command -v fzf)" ]]; then
  echo "Uninstalling fzf"
  $(brew --prefix)/opt/fzf/uninstall
else
  echo "fzf isn't installed."
fi
