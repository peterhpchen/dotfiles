#!/bin/sh

mkdir "$XDG_CONFIG_HOME/fish"
ln -s "$DOTS/fish/XDG_CONFIG_HOME/config.fish" "$XDG_CONFIG_HOME/fish"
