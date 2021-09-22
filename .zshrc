# tmuxinator
export EDITOR='code'

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/PeterChen/.sdkman"
[[ -s "/Users/PeterChen/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/PeterChen/.sdkman/bin/sdkman-init.sh"
