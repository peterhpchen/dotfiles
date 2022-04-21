#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source $__dir/_base.sh

while read uninstaller; do
  bash "$uninstaller"
done < <(find $DOTFILES_ROOT/*/scripts -name uninstall.sh)
