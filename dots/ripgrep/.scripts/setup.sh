#!/bin/sh

mkdir "$XDG_CONFIG_HOME/ripgrep"
ln -s "$DOTS/ripgrep/XDG_CONFIG_HOME/.ripgreprc" "$XDG_CONFIG_HOME/ripgrep"
