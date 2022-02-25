#!/bin/bash

echo "sdkman installer"

if [[ ! -s "$HOME/.sdkman/bin/sdkman-init.sh" ]]; then
	echo "Installing sdkman."
	curl -s "https://get.sdkman.io" | bash
else
	echo "sdkman installed."
fi

exit 0
