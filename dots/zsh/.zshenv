export SHELL="/bin/zsh"
export EDITOR="nvim"
export MANPAGER="sh -c 'col -bx | bat -l man -p'" # bat required

export DOTFILES="$HOME/.dotfiles"
export DOTS="$DOTFILES/dots"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

export HOMEBREW_PREFIX="/usr/local"

source "$DOTS/zsh-completions/zshenv.zsh"

source "$DOTS/bat/zshenv.zsh"
source "$DOTS/cheat.sh/zshenv.zsh"
source "$DOTS/ripgrep/zshenv.zsh"
source "$DOTS/zoxide/zshenv.zsh"

source "$DOTS/nvm/zshenv.zsh"
source "$DOTS/pyenv/zshenv.zsh"

source "$DOTS/sdkman/zshenv.zsh"
