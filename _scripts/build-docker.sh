#!/bin/bash

__config_name="$1"

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$__dir"/_base.sh

__dockerfile_path="$DOTFILES_ROOT"/_docker/"$__config_name"
__docker_dotfiles_path="$__dockerfile_path"/.dotfiles
mkdir "$__docker_dotfiles_path"

cp -r "$DOTFILES_ROOT"/_configs "$__docker_dotfiles_path"
cp -r "$DOTFILES_ROOT"/_scripts "$__docker_dotfiles_path"

__config_path="$DOTFILES_ROOT"/_configs/"$__config_name".txt

while read -r requirement; do
  cp -r "$DOTFILES_ROOT"/"$requirement" "$__docker_dotfiles_path"
done < <(cat "$__config_path")

cd "$__dockerfile_path" || exit
docker build --tag "$__config_name" --file Dockerfile .

rm -rf "$__docker_dotfiles_path"
