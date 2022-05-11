#!/bin/bash

while read -r dir; do
  __CONFIG_FILE=${DOTFILES_ROOTS:-~/.dotfiles}/"$dir".txt
  if [[ -r "$__CONFIG_FILE" ]]; then
    source ${DOTFILES_ROOTS:-~/.dotfiles}/_scripts/symlink-by-list.sh <"$__CONFIG_FILE"
    continue
  fi

  links_path=${DOTFILES_ROOTS:-~/.dotfiles}/"$dir"/links

  if [[ ! -d "$links_path" ]]; then
    continue
  fi

  while read -r src; do
    dst_dir="$(dirname "$HOME/${src#${DOTFILES_ROOTS:-~/.dotfiles}/*/links/}")"
    dst_file="$(basename "$src")"
    dst="$dst_dir/$dst_file"

    unlink "$dst"
    if [[ ! -e "$dst" ]]; then
      if [[ ! -d "$dst_dir)" ]]; then
        mkdir -p "$dst_dir"
      fi
      ln -s "$src" "$dst"
    fi
  done < <(find "$links_path" -type f)
done
