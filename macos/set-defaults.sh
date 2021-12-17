#!/bin/bash

##################################################
# Keyboard 
##################################################

# Boost key in speed
defaults write -g InitialKeyRepeat -int 1
defaults write -g KeyRepeat -int 1
defaults write -g ApplePressAndHoldEnabled -bool false
