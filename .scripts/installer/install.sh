#!/bin/sh

DOTFILES="$HOME/.dotfiles"

if [ -d "$DOTFILES" ]; then
	echo "The \$DOTFILES folder already exists ($DOTFILES). Please remove it."
	exit 1
fi

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

git clone --quiet "$REMOTE" "$DOTFILES"

. "$DOTS/cheat.sh/.scripts/installer/install.sh"
. "$DOTS/nvm/.scripts/installer/install.sh"
. "$DOTS/sdkman/.scripts/installer/install.sh"
. "$DOTS/ssh/.scripts/installer/install.sh"

ln -s "$DOTS/homebrew/.Brewfile" "$HOME"
brew bundle --global --quiet

# gitui
mkdir "$XDG_CONFIG_HOME/gitui"
ln -s "$DOTS/gitui/XDG_CONFIG_HOME/key_bindings.ron" "$XDG_CONFIG_HOME/gitui"

# pyenv
eval "$(pyenv init -)"
ln -s "$DOTS/pyenv/XDG_CONFIG_HOME/default-packages" "$XDG_CONFIG_HOME/pyenv"
pyenv install "$PYTHON_VERSION"
pyenv global "$PYTHON_VERSION"

# ripgrep
mkdir "$XDG_CONFIG_HOME/ripgrep"
ln -s "$DOTS/ripgrep/XDG_CONFIG_HOME/.ripgreprc" "$XDG_CONFIG_HOME/ripgrep"

# fzf
"$(brew --prefix)"/opt/fzf/install --xdg --key-bindings --no-update-rc --completion --no-bash --no-fish

# neofetch
mkdir "$XDG_CONFIG_HOME/neofetch"
ln -s "$DOTS/neofetch/XDG_CONFIG_HOME/config.conf" "$XDG_CONFIG_HOME/neofetch"

# tmux
git clone "$TPM_REMOTE" "$XDG_CONFIG_HOME/tmux/plugins/tpm"
ln -s "$DOTS/tmux/XDG_CONFIG_HOME/tmux.conf" "$XDG_CONFIG_HOME/tmux"
"$XDG_CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins"

# tmuxinator
mkdir "$XDG_CONFIG_HOME/tmuxinator"
ln -s "$DOTS/tmuxinator/XDG_CONFIG_HOME/base.yml" "$XDG_CONFIG_HOME/tmuxinator"

# kitty
mkdir "$XDG_CONFIG_HOME/kitty"
ln -s "$DOTS/kitty/XDG_CONFIG_HOME/kitty.conf" "$XDG_CONFIG_HOME/kitty"
cd "$DOTFILES"
git submodule update --init -- dots/kitty/nord-kitty

# git
mkdir "$XDG_CONFIG_HOME/git"
ln -s "$DOTS/git/XDG_CONFIG_HOME/config" "$XDG_CONFIG_HOME/git"
ln -s "$DOTS/git/XDG_CONFIG_HOME/ignore" "$XDG_CONFIG_HOME/git"

# dircolors
cd "$DOTFILES"
git submodule update --init -- dots/dircolors/nord-dircolors

# bat
mkdir "$XDG_CONFIG_HOME/bat"
ln -s "$DOTS/bat/XDG_CONFIG_HOME/bat.conf" "$XDG_CONFIG_HOME/bat"

# Zsh
ln -s "$DOTS/zsh/.zshenv" "$HOME"
mkdir "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/XDG_CONFIG_HOME/.zshenv" "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/XDG_CONFIG_HOME/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -s "$DOTS/zsh/XDG_CONFIG_HOME/.p10k.zsh" "$XDG_CONFIG_HOME/zsh"

ln -s "$DOTS/editorconfig/.editorconfig" "$HOME"
ln -s "$DOTS/prettier/.prettierrc.js" "$HOME"

# macOS
echo "Set a shorter Delay until key repeat"
defaults write -g InitialKeyRepeat -int 15
echo "Set a blazingly fast keyboard repeat rate"
defaults write -g KeyRepeat -int 1
echo "Disable press-and-hold for keys in favor of key repeat"
defaults write -g ApplePressAndHoldEnabled -bool false

# Rectangle
defaults write com.knollsoft.Rectangle subsequentExecutionMode -int 1
