#!/bin/sh

DOTFILES="$HOME/.dotfiles"
XDG_CONFIG_HOME="$HOME/.config"
REMOTE=https://github.com/peterhpchen/dotfiles.git

NVM_DIR="$XDG_CONFIG_HOME/nvm"

export PYENV_ROOT="$XDG_CONFIG_HOME/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
PYTHON_VERSION="3.10.5"

TPM_REMOTE=https://github.com/tmux-plugins/tpm.git

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

# NVM
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
brew bundle --global --quiet

# pyenv
eval "$(pyenv init -)"
ln -s "$DOTFILES/pyenv/default-packages" "$XDG_CONFIG_HOME/pyenv"
pyenv install "$PYTHON_VERSION"
pyenv global "$PYTHON_VERSION"

# ripgrep
mkdir "$XDG_CONFIG_HOME/ripgrep"
ln -s "$DOTFILES/ripgrep/.ripgreprc" "$XDG_CONFIG_HOME/ripgrep"

# fzf
"$(brew --prefix)"/opt/fzf/install --xdg --key-bindings --no-update-rc --completion --no-bash --no-fish

# neofetch
mkdir "$XDG_CONFIG_HOME/neofetch"
ln -s "$DOTFILES/neofetch/config.conf" "$XDG_CONFIG_HOME/neofetch"

# tmux
git clone "$TPM_REMOTE" "$XDG_CONFIG_HOME/tmux/plugins/tpm"
ln -s "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux"
"$XDG_CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins"

# kitty
mkdir "$XDG_CONFIG_HOME/kitty"
ln -s "$DOTFILES/kitty/kitty.conf" "$XDG_CONFIG_HOME/kitty"

# Zsh
ln -s "$DOTFILES/.zshenv" "$HOME"
mkdir "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTFILES/zsh/.zshenv" "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTFILES/zsh/.p10k.zsh" "$XDG_CONFIG_HOME/zsh"

ln -s "$DOTFILES/.editorconfig" "$XDG_CONFIG_HOME"
