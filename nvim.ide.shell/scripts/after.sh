#!/bin/bash

echo "install treesitter bash parser"
nvim --headless -c "TSInstallSync bash" -c "q"
