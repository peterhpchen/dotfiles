# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias dfs="cd $HOME/.dotfiles"

source "$DOTFILES/zsh-autosuggestions/zshrc.zsh"
source "$DOTFILES/zsh-syntax-highlighting/zshrc.zsh"
source "$DOTFILES/zsh-history-substring-search/zshrc.zsh"
source "$DOTFILES/powerlevel10k/zshrc.zsh"

source "$DOTFILES/bat/zshrc.zsh"
source "$DOTFILES/exa/zshrc.zsh"
source "$DOTFILES/fd/zshrc.zsh"
source "$DOTFILES/fzf/zshrc.zsh"

source "$DOTFILES/nvm/zshrc.zsh"
source "$DOTFILES/pyenv/zshrc.zsh"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
