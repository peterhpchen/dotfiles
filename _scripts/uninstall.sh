#!/bin/bash

while read uninstaller; do
  bash "$uninstaller"
done < <(find ${DOTFILES_ROOTS:-~/.dotfiles}/*/scripts -name uninstall.sh)
