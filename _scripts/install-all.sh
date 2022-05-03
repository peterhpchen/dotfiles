#!/bin/bash

# get collection directory field count for sort command
__sort_field_count=$(tr -dc '/' <<<${DOTFILES_ROOTS:-~/.dotfiles} | awk '{ print length + 2; }')

while read installer; do
  source "$installer"
done < <(find ${DOTFILES_ROOTS:-~/.dotfiles}/*/scripts -name install.sh | sort -t '/' -k"$__sort_field_count","$__sort_field_count")
