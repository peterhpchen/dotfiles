source "$DOTFILES/neofetch/zshrc.zsh"
source "$DOTFILES/powerlevel10k/zshrc.zsh"
# The above source need pin on the top

alias dfs="cd $HOME/.dotfiles"

# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

source "$DOTFILES/zsh-autosuggestions/zshrc.zsh"
source "$DOTFILES/zsh-syntax-highlighting/zshrc.zsh"
source "$DOTFILES/zsh-history-substring-search/zshrc.zsh"

source "$DOTFILES/bat/zshrc.zsh"
source "$DOTFILES/dircolors/zshrc.zsh"
source "$DOTFILES/exa/zshrc.zsh"
source "$DOTFILES/fd/zshrc.zsh"
source "$DOTFILES/fzf/zshrc.zsh"
source "$DOTFILES/zoxide/zshrc.zsh"

source "$DOTFILES/nvm/zshrc.zsh"
source "$DOTFILES/pyenv/zshrc.zsh"

source "$DOTFILES/gitignore.io/zshrc.zsh"

# The following source need to pin on the bottom
source "$DOTFILES/sdkman/zshrc.zsh"
