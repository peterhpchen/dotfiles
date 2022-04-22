#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Pacman installer"

echo "Installing packages from the pkglist.txt"
pacman -Sy
pacman -S --noconfirm --needed - <$__dir/pkglist.txt

exit 0
