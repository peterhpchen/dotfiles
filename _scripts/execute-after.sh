#!/bin/bash

while read -r dir; do
  if [ -n "$dir" ]; then
    __after_script_path=${DOTFILES_ROOTS:-~/.dotfiles}/"$dir"/scripts/after.sh
    if [ -f "$__after_script_path" ]; then
      source "$__after_script_path"
    fi
  fi
done
