#!/bin/sh

DOTFILES="$HOME/.dotfiles"
XDG_CONFIG_HOME="$HOME/.config"
REMOTE=https://github.com/peterhpchen/dotfiles.git

NVM_DIR="$XDG_CONFIG_HOME/nvm"

export PYENV_ROOT="$XDG_CONFIG_HOME/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
PYTHON_VERSION="3.10.5"

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

git clone --quiet "$REMOTE" "$DOTFILES"

if [ ! -f "$NVM_DIR/nvm.sh" ]; then
  echo "NVM not installed. Installing."
  git clone --quiet https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout --quiet `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
fi

ln -s "$DOTFILES/nvm/default-packages" "$NVM_DIR"
. "$NVM_DIR/nvm.sh"
nvm install --no-progress --default 'lts/*'

ln -s "$DOTFILES/.Brewfile" "$HOME"
brew bundle --global

eval "$(pyenv init -)"
pyenv install "$PYTHON_VERSION"
pyenv global "$PYTHON_VERSION"

ln -s "$DOTFILES/.zshrc" "$HOME"
ln -s "$DOTFILES/.zshenv" "$HOME"
