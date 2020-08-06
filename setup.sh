#!/bin/zsh

# Find the directory where setup.sh is
CLI_CONFIG_ROOT=`dirname $0`
# Goto config dir
cd $CLI_CONFIG_ROOT

# Create src if not exists
mkdir src > /dev/null 2> /dev/null || true

# Download antigen into src folder
curl -L git.io/antigen > ./src/antigen.zsh

# TODO: move this to requirements
# sudo apt install -y zsh
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh

# Load antigen
. ./src/antigen.zsh
antigen use oh-my-zsh

antigen bundle lukechilds/zsh-nvm
antigen apply
nvm install --lts

currentOs=`uname -s`
if [ $currentOs = "Linux" ]; then
    # echo 'You are on linux'
    . ./config/linux.sh
elif [ $currentOs = "Darwin" ]; then
    # echo 'Mac huh'
    brew install autojump direnv
else
    echo 'what realm is this?'
fi

echo '\n\nYou are ready to use cli-config now'
echo "Paste this in your .zshrc \n\nCLI_CONFIG_ROOT='$CLI_CONFIG_ROOT'\nsource \"\$CLI_CONFIG_ROOT/main.sh\""
echo "And restart your shell"