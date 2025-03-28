#!/bin/sh

mkdir "$XDG_CONFIG_HOME/tmux"
ln -s "$DOTS/tmux/XDG_CONFIG_HOME/tmux.ubuntu.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"
