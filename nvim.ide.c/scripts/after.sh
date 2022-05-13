#!/bin/bash

echo "install treesitter c, cpp parser"
nvim --headless -c "TSInstallSync c cpp" -c "q"
