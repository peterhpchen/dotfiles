#!/bin/bash

pkg=$1
if [ -n "$pkg" ]; then
  __install_script_path=${DOTFILES_ROOTS:-~/.dotfiles}/"$pkg"/scripts/install.sh
  if [ -f "$__install_script_path" ]; then
    source "$__install_script_path"
  fi
fi
