neofetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Init zplug
source $ZPLUG_HOME/init.zsh

while read dir; do
  zsh_dir="$DOTFILES_ROOT/$dir/zshrc"

  if [[ ! -d "$zsh_dir" ]]; then
    continue
  fi

  while read file; do
    source "$file"
  done < <(find $zsh_dir/*.zsh)
done<$DOTFILES_REQUIREMENTS
