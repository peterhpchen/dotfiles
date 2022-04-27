#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source $__dir/_base.sh

while read src; do
  dst_dir="$(dirname "$HOME/${src#$DOTFILES_ROOT/*/links/}")"
  dst_file="$(basename ${src})"
  dst="$dst_dir/$dst_file"

  if [[ ! -e "$dst" ]]; then
    if [[ ! -d "$dst_dir)" ]]; then
      mkdir -p "$dst_dir"
    fi
    ln -s "$src" "$dst"
  fi
done < <(find $DOTFILES_ROOT/*/links -type f)