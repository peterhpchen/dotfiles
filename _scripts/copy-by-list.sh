#!/bin/bash

__LIST_PATH="$1"
__TO_DIR="$2"

while read -r dir; do
  if [[ -z "$dir" ]]; then
    continue
  fi

  __CONFIG_FILE=${DOTFILES_ROOTS:-~/.dotfiles}/"$dir".txt
  if [[ -r "$__CONFIG_FILE" ]]; then
    source ${DOTFILES_ROOTS:-~/.dotfiles}/_scripts/copy-by-list.sh "$__CONFIG_FILE" "$__TO_DIR"
    continue
  fi

  __PKG_PATH=${DOTFILES_ROOTS:-~/.dotfiles}/"$dir"
  if [[ ! -d "$__PKG_PATH" ]]; then
    continue
  fi

  cp -r "$__PKG_PATH" "$__TO_DIR"
done < <(cat "$__LIST_PATH")
