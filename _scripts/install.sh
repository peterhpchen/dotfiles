#!/bin/bash

pkg=$1
if [ -n "$pkg" ]; then
  source ${DOTFILES_ROOTS:-~/.dotfiles}/$pkg/scripts/install.sh
fi
