#!/bin/sh

mkdir "$XDG_CONFIG_HOME/kitty"
ln -s "$DOTS/kitty/XDG_CONFIG_HOME/kitty.conf" "$XDG_CONFIG_HOME/kitty"
cd "$DOTFILES"
git submodule update --init -- dots/kitty/nord-kitty
