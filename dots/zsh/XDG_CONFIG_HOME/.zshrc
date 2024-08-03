source "$DOTS/fastfetch/zshrc.zsh"
source "$DOTS/zsh/powerlevel10k/zshrc.zsh"
# The above source need pin on the top

alias dfs="cd $HOME/.dotfiles"

# completion
autoload -Uz compinit
compinit

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

source "$DOTS/zsh/zsh-autosuggestions/zshrc.zsh"
source "$DOTS/zsh/zsh-syntax-highlighting/zshrc.zsh"
source "$DOTS/zsh/zsh-history-substring-search/zshrc.zsh"

source "$DOTS/bat/zshrc.zsh"
source "$DOTS/dircolors/zshrc.zsh"
source "$DOTS/eza/zshrc.zsh"
source "$DOTS/fd/zshrc.zsh"
source "$DOTS/fzf/zshrc.zsh"
source "$DOTS/tmuxinator/zshrc.zsh"
source "$DOTS/zoxide/zshrc.zsh"

source "$DOTS/nvm/zshrc.zsh"
source "$DOTS/pyenv/zshrc.zsh"

source "$DOTS/gitignore.io/zshrc.zsh"

# The following source need to pin on the bottom
source "$DOTS/sdkman/zshrc.zsh"
