#!/usr/bin/env bash
DOTFILES="$(pwd)"

unset_symlinks() {
  echo "Removing symlinks"
  unlink $HOME/.zshrc
  unlink $HOME/.zshenv
  unlink $HOME/.p10k.zsh
  unlink $HOME/.ripgreprc
  unlink $HOME/.dir_colors

  unlink $HOME/.config/alacritty

  unlink $HOME/.vimrc

  unlink $HOME/.config/nvim

  unlink $HOME/.editorconfig

  unlink $HOME/.tmux.conf
  unlink $HOME/.tmux
}

unset_homebrew() {
  echo "Unsetting Homebrew"
  brew remove $(brew bundle list --file=$DOTFILES/Brewfile)
}

# https://github.com/chubin/cheat.sh
unset_cheat.sh() {
  echo "Unsetting cheat.sh"

  echo "Uninstalling cheat.sh"
  rm -f /usr/local/bin/cht.sh

  echo "Unsetting Zsh Tab Completion"
  rm -f ~/.zsh.d/_cht
}

unset_symlinks
unset_homebrew
unset_cheat.sh
