#!/bin/bash

##################################################
# Keyboard
##################################################

# Boost key in speed

echo "Set a shorter Delay until key repeat"
defaults write -g InitialKeyRepeat -int 1

echo "Set a blazingly fast keyboard repeat rate"
defaults write -g KeyRepeat -int 1

echo "Disable press-and-hold for keys in favor of key repeat"
defaults write -g ApplePressAndHoldEnabled -bool false
