source "$DOTS/neofetch/zshrc.zsh"
source "$DOTS/powerlevel10k/zshrc.zsh"
# The above source need pin on the top

alias dfs="cd $HOME/.dotfiles"

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

source "$DOTS/zsh-autosuggestions/zshrc.zsh"
source "$DOTS/zsh-syntax-highlighting/zshrc.zsh"
source "$DOTS/zsh-history-substring-search/zshrc.zsh"

source "$DOTS/bat/zshrc.zsh"
source "$DOTS/dircolors/zshrc.zsh"
source "$DOTS/exa/zshrc.zsh"
source "$DOTS/fd/zshrc.zsh"
source "$DOTS/fzf/zshrc.zsh"
source "$DOTS/tmuxinator/zshrc.zsh"
source "$DOTS/zoxide/zshrc.zsh"

source "$DOTS/nvm/zshrc.zsh"
source "$DOTS/pyenv/zshrc.zsh"

source "$DOTS/gitignore.io/zshrc.zsh"

# The following source need to pin on the bottom
source "$DOTS/sdkman/zshrc.zsh"