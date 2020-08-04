#!/bin/bash

# Goto config dir
cd ~/config

# create src if not exists
mkdir src || true
cd src

# download antigen
curl -L git.io/antigen > antigen.zsh

sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

source ~/config/src/antigen.zsh
antigen bundle lukechilds/zsh-nvm
antigen apply
nvm install --lts