#!/bin/bash

while read -r dir; do
  install_script="$DOTFILES_ROOT/$dir/scripts/install.sh"
  if [ -f "$install_script" ]; then
    bash "$install_script"
  fi
done
