#!/bin/zsh

if [[ -f ~/.zplug/init.zsh ]]; then
  # https://github.com/zplug/zplug#zplug_home
  export ZPLUG_HOME=~/.zplug
  # https://github.com/zplug/zplug#zplug_loadfile
  export ZPLUG_LOADFILE=$ZPLUG_HOME/packages.zsh
fi
