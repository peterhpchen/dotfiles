#!/bin/sh

ln -s "$DOTS/zsh/.zshenv" "$HOME"
mkdir "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/XDG_CONFIG_HOME/.zshenv" "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/XDG_CONFIG_HOME/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/XDG_CONFIG_HOME/.p10k.zsh" "$XDG_CONFIG_HOME/zsh"

cd "$DOTFILES"
git submodule update --init -- dots/zsh/packages/zsh-autosuggestions
git submodule update --init -- dots/zsh/packages/zsh-completions
git submodule update --init -- dots/zsh/packages/zsh-history-substring-search
git submodule update --init -- dots/zsh/packages/zsh-syntax-highlighting
