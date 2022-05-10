#!/bin/bash

echo "Patch zplug"
patch ~/.zplug/base/core/add.zsh ~/tmp/zplug/patch/pipe_fix.diff

echo "Zplug install packages"
/bin/zsh -ic "ZPLUG_PIPE_FIX=true zplug install"
