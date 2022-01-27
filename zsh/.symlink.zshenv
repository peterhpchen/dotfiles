export DOTFILES_ROOT=~/.dotfiles

while read file; do
  source $file
done < <(find $DOTFILES_ROOT -name path.zsh)
