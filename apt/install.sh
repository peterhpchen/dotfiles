#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "apt installer"

echo "Installing packages from the packages.txt"
xargs sudo apt-get install -y <$__dir/packages.txt

exit 0
