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
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# use current node LTS version with nvm
# suppress output
nvm use --lts &> /dev/null

# alias cls to clear
alias cls=clear

# run ssh agent
eval "$(ssh-agent -s)" &> /dev/null