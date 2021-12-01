# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Mac needs to use gdircolors to set $LS_COLORS
# https://github.com/gibbling/dircolors
eval $(gdircolors -b $HOME/.dir_colors)

########################################
# alias
########################################

# ogham/exa
# https://github.com/zimfw/exa/blob/bab903d6745f87a9516c63505e19257ed3409131/init.zsh
if (( ${+commands[exa]} )); then
  alias ls='exa --group-directories-first'
fi

# eth-p/bat-extras
# https://github.com/eth-p/bat-extras
if (( ${+commands[rg]} )); then
  if (( ${+commands[batman]} )); then
    alias man='batman'
  fi
fi

if (( ${+commands[nvim]} )); then
  alias vim='nvim'
  alias vi='nvim'
fi

########################################
# bindkey
########################################

# zsh-users/zsh-history-substring-search
# https://github.com/zsh-users/zsh-history-substring-search#usage
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


########################################
# zstyle
########################################

# Completion tab highlight
# https://stackoverflow.com/a/29197217/9265131
zstyle ':completion:*' menu select

# Set colors to completion options
if [ -n $LS_COLORS ]; then
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi


########################################
# cheat.sh
# https://github.com/chubin/cheat.sh
########################################

# Install cheat.sh if necessary
if ! type cht.sh > /dev/null; then
  curl -s https://cht.sh/:cht.sh > /usr/local/bin/cht.sh
  chmod +x /usr/local/bin/cht.sh
fi

# Completion definitions for cheat.sh
if [[ ! -f $HOME/.zsh.d/_cht ]]; then
  curl -s https://cheat.sh/:zsh > $HOME/.zsh.d/_cht
fi
fpath=(~/.zsh.d/ $fpath)

########################################
# zplug
# https://github.com/zplug/zplug
########################################

# Clone zplug if necessary
if [[ ! -f $ZPLUG_HOME/init.zsh ]]; then
  git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi

# Init zplug
source $ZPLUG_HOME/init.zsh

# A Zsh theme
# https://github.com/romkatv/powerlevel10k
zplug romkatv/powerlevel10k, as:theme, depth:1

# Additional completion definitions for Zsh.
# https://github.com/zsh-users/zsh-completions
zplug zsh-users/zsh-completions

# Fish-like autosuggestions for Zsh.
# https://github.com/zsh-users/zsh-autosuggestions
zplug zsh-users/zsh-autosuggestions

# Fish-like syntax highlighting for Zsh.
# zsh-users/zsh-syntax-highlighting must be sourced after completion
# https://github.com/zsh-users/zsh-syntax-highlighting
zplug zsh-users/zsh-syntax-highlighting

# Fish-like history search (up arrow) for Zsh.
# zsh-users/zsh-history-substring-search must be sourced after zsh-users/zsh-syntax-highlighting
# https://github.com/zsh-users/zsh-history-substring-search
zplug zsh-users/zsh-history-substring-search

# Replace zsh's default completion selection menu with fzf!
# https://github.com/Aloxaf/fzf-tab
zplug Aloxaf/fzf-tab

# zplug check returns true if all packages are installed
# Therefore, when it returns false, run zplug install
if ! zplug check; then
  zplug install
fi

# source plugins and add commands to the PATH
zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set up fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh