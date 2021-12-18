#!/bin/bash

echo "zplug installer"

# Clone zplug if necessary
if [[ ! -f $ZPLUG_HOME/init.zsh ]]; then
  echo "Installing zplug."
  git clone https://github.com/zplug/zplug $ZPLUG_HOME
else
  echo "zplug was installed."
fi

exit 0
