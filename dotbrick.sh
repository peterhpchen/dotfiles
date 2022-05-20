#!/bin/bash

rm -rf ~/.dotbrick/_configs/my-dotfiles.txt
ln -s ~/.dotfiles/_configs/my-dotfiles.txt ~/.dotbrick/_configs/my-dotfiles.txt
rm -rf ~/.dotbrick/_configs/my-macos.txt
ln -s ~/.dotfiles/_configs/my-macos.txt ~/.dotbrick/_configs/my-macos.txt
rm -rf ~/.dotbrick/dotfiles
ln -s ~/.dotfiles/dotfiles ~/.dotbrick/dotfiles
rm -rf ~/.dotbrick/ide
ln -s ~/.dotfiles/ide ~/.dotbrick/ide
rm -rf ~/.dotbrick/ssh
ln -s ~/.dotfiles/ssh ~/.dotbrick/ssh
