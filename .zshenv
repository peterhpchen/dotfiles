export DOTFILES="$HOME/.dotfiles"
export XDG_CONFIG_HOME="$HOME/.config"
export HOMEBREW_PREFIX="/usr/local"

source "$DOTFILES/zsh-completions/zshenv.zsh"

source "$DOTFILES/bat/zshenv.zsh"
source "$DOTFILES/ripgrep/zshenv.zsh"

source "$DOTFILES/nvm/zshenv.zsh"
source "$DOTFILES/pyenv/zshenv.zsh"
