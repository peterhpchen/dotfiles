#!/bin/sh

DOTFILES="$HOME/.dotfiles"

if [ -d "$DOTFILES" ]; then
  echo "The \$DOTFILES folder already exists ($DOTFILES). Please remove it."
  exit 1
fi

DOTS="$DOTFILES/dots"
XDG_CONFIG_HOME="$HOME/.config"
REMOTE=https://github.com/peterhpchen/dotfiles.git

if [ ! "$(command -v brew)" ]; then
  echo "Homebrew not installed. Installing."
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash --login
fi

if [ ! "$(command -v git)" ]; then
  echo "Git not installed. Installing."
  brew install git
fi

git clone --quiet "$REMOTE" "$DOTFILES"

. "$DOTS/cheat.sh/.scripts/install.sh"
. "$DOTS/nvm/.scripts/install.sh"
. "$DOTS/sdkman/.scripts/install.sh"
. "$DOTS/ssh/.scripts/install.sh"

. "$DOTS/homebrew/.scripts/setup.sh"
. "$DOTS/gitui/.scripts/setup.sh"

. "$DOTS/pyenv/.scripts/setup.sh"

. "$DOTS/ripgrep/.scripts/setup.sh"
. "$DOTS/fzf/.scripts/setup.sh"
. "$DOTS/neofetch/.scripts/setup.sh"

. "$DOTS/tmux/.scripts/setup.sh"

. "$DOTS/tmuxinator/.scripts/setup.sh"

. "$DOTS/kitty/.scripts/setup.sh"

. "$DOTS/git/.scripts/setup.sh"

. "$DOTS/dircolors/.scripts/setup.sh"

. "$DOTS/bat/.scripts/setup.sh"

. "$DOTS/zsh/.scripts/setup.sh"

. "$DOTS/editorconfig/.scripts/setup.sh"
. "$DOTS/prettier/.scripts/setup.sh"

. "$DOTS/macos/.scripts/setup.sh"
. "$DOTS/rectangle/.scripts/setup.sh"
