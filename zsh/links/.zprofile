while read dir; do
  zsh_dir="$DOTFILES_ROOT/$dir/zprofile"

  if [[ ! -d "$zsh_dir" ]]; then
    continue
  fi

  while read file; do
    source "$file"
  done < <(find $zsh_dir/*.zsh)
done<$DOTFILES_REQUIREMENTS
