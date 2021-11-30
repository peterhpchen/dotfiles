#!/bin/bash

DOTFILES="$(pwd)"

setup_symlinks() {
  echo "Creating symlinks"

  [[ -e $HOME/.zshrc ]] || ln -s "$DOTFILES"/zsh/.zshrc "$HOME"/.zshrc
  [[ -e $HOME/.zshenv ]] || ln -s "$DOTFILES"/zsh/.zshenv "$HOME"/.zshenv
  [[ -e $HOME/.p10k.zsh ]] || ln -s "$DOTFILES"/zsh/.p10k.zsh "$HOME"/.p10k.zsh
  [[ -e $HOME/.ripgreprc ]] || ln -s "$DOTFILES"/zsh/.ripgreprc "$HOME"/.ripgreprc
  [[ -e $HOME/.dir_colors ]] || ln -s "$DOTFILES"/zsh/.dir_colors "$HOME"/.dir_colors

  [[ -e $HOME/.config/alacritty ]] || ln -s "$DOTFILES"/alacritty "$HOME"/.config/alacritty

  [[ -e $HOME/.vimrc ]] || ln -s "$DOTFILES"/vim/.vimrc "$HOME"/.vimrc
}

setup_homebrew() {
  echo "Setting up Homebrew"
  brew bundle --file="$DOTFILES"/Brewfile

  echo "Installing fzf"
  # Just for zsh, add fzf
  # https://github.com/junegunn/fzf/blob/master/install
  "$(brew --prefix)"/opt/fzf/install --key-bindings --completion --update-rc --no-bash --no-fish
}

setup_symlinks
setup_homebrew
