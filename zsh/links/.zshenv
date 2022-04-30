export SHELL=/bin/zsh
export DOTFILES_ROOT=~/.dotfiles
export DOTFILES_REQUIREMENTS="$HOME/.dotfiles-requirements.txt"

while read file; do
  source "$file"
done < <(find $HOME/.zshenv.d/*/*.zsh)

# Prevent locale warning message
export LC_ALL=en_US.UTF-8
