#!/usr/bin/env bash

DOTFILES="$(pwd)"

setup_symlinks() {
  echo "Creating symlinks"

  ln -s $DOTFILES/zsh/.zshrc $HOME/.zshrc
  ln -s $DOTFILES/zsh/.zshenv $HOME/.zshenv
  ln -s $DOTFILES/zsh/.p10k.zsh $HOME/.p10k.zsh

  ln -s $DOTFILES/alacritty $HOME/.config/alacritty
}

setup_homebrew() {
  echo "Setting up Homebrew"
  brew bundle --file=$DOTFILES/Brewfile
}

setup_symlinks
setup_homebrew
