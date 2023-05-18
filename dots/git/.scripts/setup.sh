#!/bin/sh

mkdir "$XDG_CONFIG_HOME/git"
ln -s "$DOTS/git/XDG_CONFIG_HOME/config" "$XDG_CONFIG_HOME/git"
ln -s "$DOTS/git/XDG_CONFIG_HOME/ignore" "$XDG_CONFIG_HOME/git"
