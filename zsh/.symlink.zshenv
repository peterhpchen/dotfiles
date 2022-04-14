export DOTFILES_ROOT=~/.dotfiles

while read file; do
  source $file
done < <(find $DOTFILES_ROOT -name "*.zshenv.zsh")

# Prevent locale warning message
export LC_ALL=en_US.UTF-8
