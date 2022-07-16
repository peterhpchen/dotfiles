#!/bin/sh

DOTFILES="${DOTFILES:-$HOME/.dotfiles}"

if [ ! "$(command -v brew)" ]; then
  echo "Homebrew not installed. Installing."
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
fi

if [ ! "$(command -v git)" ]; then
  echo "Git not installed. Installing."
  brew install git
fi

if [ -d "$DOTFILES" ]; then
  echo "The \$DOTFILES folder already exists ($DOTFILES). Please remove it."
  exit 1
fi

git clone https://github.com/peterhpchen/dotfiles.git "$DOTFILES"

ln -s "$DOTFILES"/Brewfile "$HOME"
brew bundle

ln -s "$DOTFILES"/.zshenv "$HOME"
