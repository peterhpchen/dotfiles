#!/bin/bash

echo "cheat.sh installer"

if [[ ! "$(command -v cht.sh)" ]]; then
  echo "Installing cheat.sh."
  curl -s https://cht.sh/:cht.sh >/usr/local/bin/cht.sh
  chmod +x /usr/local/bin/cht.sh
else
  echo "cheat.sh insatlled."
fi
