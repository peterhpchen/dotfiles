#!/bin/sh

DOTFILES="$HOME/.dotfiles"

if [ -d "$DOTFILES" ]; then
  echo "The \$DOTFILES folder already exists ($DOTFILES). Please remove it."
  exit 1
fi

DOTS="$DOTFILES/dots"
XDG_CONFIG_HOME="$HOME/.config"
REMOTE=https://github.com/peterhpchen/dotfiles.git

if [ ! "$(command -v git)" ]; then
  echo "Git not installed. Installing."
  apt update
  apt install -y git
fi

git clone --quiet "$REMOTE" "$DOTFILES"

mkdir "$XDG_CONFIG_HOME"

. "$DOTS/apt/.scripts/setup.sh"
. "$DOTS/fish/.scripts/setup.sh"
. "$DOTS/tmux/.scripts/setup.ubuntu.sh"
