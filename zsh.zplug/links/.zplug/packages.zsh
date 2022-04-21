#!/bin/zsh

# A Zsh theme
# https://github.com/romkatv/powerlevel10k
zplug "romkatv/powerlevel10k", as:theme, depth:1

# Additional completion definitions for Zsh.
# https://github.com/zsh-users/zsh-completions
zplug "zsh-users/zsh-completions"

# Fish-like autosuggestions for Zsh.
# https://github.com/zsh-users/zsh-autosuggestions
zplug "zsh-users/zsh-autosuggestions"

# Fish-like syntax highlighting for Zsh.
# zsh-users/zsh-syntax-highlighting must be sourced after completion
# https://github.com/zsh-users/zsh-syntax-highlighting
zplug "zsh-users/zsh-syntax-highlighting"

# Fish-like history search (up arrow) for Zsh.
# zsh-users/zsh-history-substring-search must be sourced after zsh-users/zsh-syntax-highlighting
# https://github.com/zsh-users/zsh-history-substring-search
zplug "zsh-users/zsh-history-substring-search"

# Replace zsh's default completion selection menu with fzf!
# https://github.com/Aloxaf/fzf-tab
zplug "Aloxaf/fzf-tab"

# A next-generation cd command with your interactive filter
# https://github.com/b4b4r07/enhancd
zplug "b4b4r07/enhancd", use:init.sh
