#!/bin/sh

DOTFILES="$HOME/.dotfiles"
DOTS="$DOTFILES/dots"
XDG_CONFIG_HOME="$HOME/.config"
REMOTE=https://github.com/peterhpchen/dotfiles.git

export PYENV_ROOT="$XDG_CONFIG_HOME/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
PYTHON_VERSION="3.10.5"

TPM_REMOTE=https://github.com/tmux-plugins/tpm.git

if [ ! "$(command -v brew)" ]; then
  echo "Homebrew not installed. Installing."
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash --login
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

. "$DOTS/cheat.sh/utils/installer/install.sh"
. "$DOTS/nvm/utils/installer/install.sh"
. "$DOTS/sdkman/utils/installer/install.sh"
. "$DOTS/ssh/utils/installer/install.sh"

ln -s "$DOTS/.Brewfile" "$HOME"
brew bundle --global --quiet

# gitui
ln -s "$DOTS/gitui/key_bindings.ron" "$XDG_CONFIG_HOME/gitui"

# pyenv
eval "$(pyenv init -)"
ln -s "$DOTS/pyenv/default-packages" "$XDG_CONFIG_HOME/pyenv"
pyenv install "$PYTHON_VERSION"
pyenv global "$PYTHON_VERSION"

# ripgrep
mkdir "$XDG_CONFIG_HOME/ripgrep"
ln -s "$DOTS/ripgrep/.ripgreprc" "$XDG_CONFIG_HOME/ripgrep"

# fzf
"$(brew --prefix)"/opt/fzf/install --xdg --key-bindings --no-update-rc --completion --no-bash --no-fish

# neofetch
mkdir "$XDG_CONFIG_HOME/neofetch"
ln -s "$DOTS/neofetch/config.conf" "$XDG_CONFIG_HOME/neofetch"

# tmux
git clone "$TPM_REMOTE" "$XDG_CONFIG_HOME/tmux/plugins/tpm"
ln -s "$DOTS/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux"
"$XDG_CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins"

# tmuxinator
ln -s "$DOTS/tmuxinator/base.yml" "$XDG_CONFIG_HOME/tmuxinator"

# kitty
mkdir "$XDG_CONFIG_HOME/kitty"
ln -s "$DOTS/kitty/kitty.conf" "$XDG_CONFIG_HOME/kitty"
cd "$DOTFILES"
git submodule update --init -- dots/kitty/nord-kitty

# git
mkdir "$XDG_CONFIG_HOME/git"
ln -s "$DOTS/git/config" "$XDG_CONFIG_HOME/git"
ln -s "$DOTS/git/ignore" "$XDG_CONFIG_HOME/git"

# dircolors
cd "$DOTFILES"
git submodule update --init -- dots/dircolors/nord-dircolors

# Zsh
ln -s "$DOTS/.zshenv" "$HOME"
mkdir "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/.zshenv" "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/.p10k.zsh" "$XDG_CONFIG_HOME/zsh"

ln -s "$DOTS/.editorconfig" "$HOME"
ln -s "$DOTS/.prettierrc.js" "$HOME"

# macOS
echo "Set a shorter Delay until key repeat"
defaults write -g InitialKeyRepeat -int 15
echo "Set a blazingly fast keyboard repeat rate"
defaults write -g KeyRepeat -int 1
echo "Disable press-and-hold for keys in favor of key repeat"
defaults write -g ApplePressAndHoldEnabled -bool false

# Rectangle
defaults write com.knollsoft.Rectangle subsequentExecutionMode -int 1
