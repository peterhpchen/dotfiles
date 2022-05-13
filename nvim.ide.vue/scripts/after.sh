#!/bin/bash

echo "install treesitter vue parser"
nvim --headless -c "TSInstallSync vue" -c "q"
