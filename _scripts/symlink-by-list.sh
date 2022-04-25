#!/bin/bash

while read -r dir; do
  links_path="$DOTFILES_ROOT/$dir/links"

  if [[ ! -d "$links_path" ]]; then
    continue
  fi

  while read -r src; do
    dst_dir="$(dirname "$HOME/${src#$DOTFILES_ROOT/*/links/}")"
    dst_file="$(basename "$src")"
    dst="$dst_dir/$dst_file"

    if [[ ! -e "$dst" ]]; then
      if [[ ! -d "$dst_dir)" ]]; then
        mkdir -p "$dst_dir"
      fi
      ln -s "$src" "$dst"
    fi
  done < <(find "$DOTFILES_ROOT"/"$dir"/links -type f)
done
