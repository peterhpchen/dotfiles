#!/bin/bash

# install package manager and install all packages
source ${DOTFILES_ROOTS:-~/.dotfiles}/_scripts/setup-package-manager
# execute all install.sh order by collection directory name
source ${DOTFILES_ROOTS:-~/.dotfiles}/_scripts/install
# remove then symlink all link files
source ${DOTFILES_ROOTS:-~/.dotfiles}/_scripts/relink
# setup os settings
source ${DOTFILES_ROOTS:-~/.dotfiles}/_scripts/setup-os
