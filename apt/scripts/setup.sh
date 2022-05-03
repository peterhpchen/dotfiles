#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "apt installer"

echo "Installing packages from the packages.txt"
sudo apt update
xargs sudo apt install -y <$__dir/packages.txt
