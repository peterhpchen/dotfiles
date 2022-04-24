#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source $__dir/_base.sh

# get collection directory field count for sort command
__sort_field_count=$(tr -dc '/' <<<"$DOTFILES_ROOT" | awk '{ print length + 2; }')

while read installer; do
  bash "$installer"
done < <(find $DOTFILES_ROOT/*/scripts -name install.sh | sort -t '/' -k"$__sort_field_count","$__sort_field_count")