while read file; do
  source "$file"
done < <(find $HOME/.zprofile.d/*/*.zsh)
