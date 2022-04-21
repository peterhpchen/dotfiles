#!/bin/bash

echo "cheat.sh installer"

if [[ ! "$(command -v cht.sh)" ]]; then
  echo "Installing cheat.sh."
  curl https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh
  sudo chmod +x /usr/local/bin/cht.sh
else
  echo "cheat.sh insatlled."
fi
