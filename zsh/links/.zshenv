export SHELL=/bin/zsh
export DOTFILES_ROOT=~/.dotfiles
export DOTFILES_REQUIREMENTS="$HOME/.dotfiles-requirements.txt"

while read dir; do
  zsh_dir="$DOTFILES_ROOT/$dir/zshenv"

  if [[ ! -d "$zsh_dir" ]]; then
    continue
  fi

  while read file; do
    source "$file"
  done < <(find $zsh_dir/*.zsh)
done<$DOTFILES_REQUIREMENTS

# Prevent locale warning message
export LC_ALL=en_US.UTF-8
