#!/bin/bash

while read -r dir; do
  if [ -n "$dir" ]; then
    source ${DOTFILES_ROOTS:-~/.dotfiles}/_scripts/install.sh $dir
  fi
done
