#!/bin/sh

NVM_DIR="$XDG_CONFIG_HOME/nvm"

if [ ! -f "$NVM_DIR/nvm.sh" ]; then
  echo "NVM not installed. Installing."
  git clone --quiet https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout --quiet $(git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1))
fi

ln -s "$DOTFILES/nvm/default-packages" "$NVM_DIR"
. "$NVM_DIR/nvm.sh"
nvm install --no-progress --default 'lts/*'
