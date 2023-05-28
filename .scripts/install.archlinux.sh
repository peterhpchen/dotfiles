#!/bin/sh

DOTFILES="$HOME/.dotfiles"

if [ -d "$DOTFILES" ]; then
  echo "The \$DOTFILES folder already exists ($DOTFILES). Please remove it."
  exit 1
fi

DOTS="$DOTFILES/dots"
XDG_CONFIG_HOME="$HOME/.config"
REMOTE=https://github.com/peterhpchen/dotfiles.git

pacman -S --noconfirm -yu

if [ ! "$(command -v git)" ]; then
  echo "Git not installed. Installing."
  pacman -S --noconfirm git
fi

git clone --quiet -b support-archlinux "$REMOTE" "$DOTFILES"

. "$DOTS/cheat.sh/.scripts/install.sh"
. "$DOTS/nvm/.scripts/install.sh"
. "$DOTS/sdkman/.scripts/install.sh"
. "$DOTS/ssh/.scripts/install.sh"

. "$DOTS/pacman/.scripts/setup.sh"
. "$DOTS/gitui/.scripts/setup.sh"

. "$DOTS/pyenv/.scripts/setup.archlinux.sh"

. "$DOTS/ripgrep/.scripts/setup.sh"
. "$DOTS/fzf/.scripts/setup.sh"
. "$DOTS/neofetch/.scripts/setup.sh"

. "$DOTS/tmux/.scripts/setup.sh"

# . "$DOTS/tmuxinator/.scripts/setup.sh"

. "$DOTS/git/.scripts/setup.sh"

. "$DOTS/dircolors/.scripts/setup.sh"

. "$DOTS/bat/.scripts/setup.sh"

. "$DOTS/zsh/.scripts/setup.archlinux.sh"

. "$DOTS/editorconfig/.scripts/setup.sh"
. "$DOTS/prettier/.scripts/setup.sh"
