#!/bin/bash

__config_name="$1"

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$__dir"/_base.sh

__dockerfile_path="$DOTFILES_ROOT"/_docker
__docker_dotfiles_path="$__dockerfile_path"/.dotfiles
mkdir "$__docker_dotfiles_path"

cp -r "$DOTFILES_ROOT"/_configs "$__docker_dotfiles_path"
cp -r "$DOTFILES_ROOT"/_scripts "$__docker_dotfiles_path"

__config_path="$DOTFILES_ROOT"/_configs/"$__config_name".txt

source "$__dir"/copy-by-list.sh "$__config_path" "$__docker_dotfiles_path"

cd "$__dockerfile_path" || exit
docker build --progress=plain --tag "$__config_name" --file Dockerfile --build-arg __config_name="$__config_name" .

rm -rf "$__docker_dotfiles_path"
