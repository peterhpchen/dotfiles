#!/bin/bash

echo "install treesitter python parser"
nvim --headless -c "TSInstallSync python" -c "q"
