export DOTFILES="$HOME/.dotfiles"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export HOMEBREW_PREFIX="/usr/local"

source "$DOTFILES/zsh-completions/zshenv.zsh"

source "$DOTFILES/bat/zshenv.zsh"
source "$DOTFILES/ripgrep/zshenv.zsh"
source "$DOTFILES/zoxide/zshenv.zsh"

source "$DOTFILES/nvm/zshenv.zsh"
source "$DOTFILES/pyenv/zshenv.zsh"

source "$DOTFILES/sdkman/zshenv.zsh"
