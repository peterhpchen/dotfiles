#!/bin/bash

echo "install treesitter html, css, scss parser"
nvim --headless -c "TSInstallSync html css scss" -c "q"
