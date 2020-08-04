# activate antigen
source ~/config/src/antigen.zsh

# use antigen to setup the terminal
antigen use oh-my-zsh
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# add zsh autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

# apply all antigen changes
antigen apply

# nvm config
export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# use current node LTS version with nvm
# suppress output
nvm use --lts &> /dev/null

# alias cls to clear
alias cls=clear

# run ssh agent
eval "$(ssh-agent -s)" &> /dev/null
