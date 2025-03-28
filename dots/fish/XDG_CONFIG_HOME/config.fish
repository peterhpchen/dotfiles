set -gx DOTFILES "$HOME/.dotfiles"
set -gx DOTS "$DOTFILES/dots"

set -gx XDG_CONFIG_HOME "$HOME/.config"

alias dfs "cd $HOME/.dotfiles"

source "$DOTS/tmuxinator/config.fish"
