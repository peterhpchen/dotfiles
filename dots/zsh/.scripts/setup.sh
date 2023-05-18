#!/bin/sh

ln -s "$DOTS/zsh/.zshenv" "$HOME"
mkdir "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/XDG_CONFIG_HOME/.zshenv" "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/XDG_CONFIG_HOME/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/XDG_CONFIG_HOME/.p10k.zsh" "$XDG_CONFIG_HOME/zsh"
