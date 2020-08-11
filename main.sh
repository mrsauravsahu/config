#!/bin/bash

# activate antigen
source $CLI_CONFIG_ROOT/src/antigen.zsh

# load cli-config env variables
source $CLI_CONFIG_ROOT/env.sh

# use antigen to setup the terminal
antigen use oh-my-zsh
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-autosuggestions
# Doesn't work on Mac without direnv and autojump installed with brew
antigen bundle ptavares/zsh-direnv
antigen bundle autojump
antigen bundle zsh-users/zsh-syntax-highlighting

# apply all antigen changes
antigen apply

export PATH=$NVM_DIR:$PATH

# use current node LTS version with nvm
# suppress output
nvm use --lts &> /dev/null

# alias cls to clear
alias cls=clear

# configure thefuck
eval $(thefuck --alias)

# run ssh agent
eval "$(ssh-agent -s)" &> /dev/null

currentOs=`uname -s`
if [ $currentOs = "Linux" ]; then
    # echo 'You are on linux'
    # TODO: check if we are specifically on Ubuntu
    source $CLI_CONFIG_ROOT/init-scripts/ubuntu.sh
elif [ $currentOs = "Darwin" ]; then
    # echo 'Mac huh'
    source $CLI_CONFIG_ROOT/init-scripts/darwin.sh
else
    echo 'what realm is this?'
fi

# TODO: change to run all *conf.sh files
# programs configuration
source $CLI_CONFIG_PROGRAMS_CONF
