#!/bin/sh

ln -s "$DOTS/zsh/.zshenv" "$HOME"
mkdir "$XDG_CONFIG_HOME/zsh"
ln -s -T "$DOTS/zsh/XDG_CONFIG_HOME/.zshenv.archlinux" "$XDG_CONFIG_HOME/zsh/.zshenv"
ln -s -T "$DOTS/zsh/XDG_CONFIG_HOME/.zshrc.archlinux" "$XDG_CONFIG_HOME/zsh/.zshrc"
ln -s "$DOTS/zsh/XDG_CONFIG_HOME/.p10k.zsh" "$XDG_CONFIG_HOME/zsh"

cd "$DOTFILES"
git submodule update --init -- dots/zsh/packages/zsh-autosuggestions
git submodule update --init -- dots/zsh/packages/zsh-completions
git submodule update --init -- dots/zsh/packages/zsh-history-substring-search
git submodule update --init -- dots/zsh/packages/zsh-syntax-highlighting
git submodule update --init --depth 1 -- dots/zsh/packages/powerlevel10k

chsh -s "$(command -v zsh)" "$(whoami)"
