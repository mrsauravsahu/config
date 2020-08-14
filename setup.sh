#! /usr/bin/env zsh

# Find the directory where setup.sh is
# This is relative path to the setup.sh script
CLI_CONFIG_ROOT=`dirname $0`

# Goto config dir
cd $CLI_CONFIG_ROOT

# Convert CLI_CONFIG_ROOT to absolute path
CLI_CONFIG_ROOT=`pwd`

# load cli-config env variables
source ./env.sh

# try and clean all conf files
rm -rf '*.conf.sh' > /dev/null 2> /dev/null || true

# Create src if not exists
mkdir src > /dev/null 2> /dev/null || true

# Download antigen into src folder
echo "\n\nCLI-CONFIG: Installing antigen plugin manager\n\n"
curl -L git.io/antigen > ./src/antigen.zsh

# TODO: move this to requirements
# sudo apt install -y zsh
echo "\n\nCLI-CONFIG: Installing ohmyzsh\n\n"
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh

# Load antigen
. ./src/antigen.zsh
antigen use oh-my-zsh

echo "\n\nCLI-CONFIG: Installing node.js with nvm\n\n"
antigen bundle lukechilds/zsh-nvm
antigen apply
nvm install --lts

echo "\n\nCLI-CONFIG: Installing programs\n\n"
. ./scripts/install.pyenv.sh

currentOs=`uname -s`
if [ $currentOs = "Linux" ]; then
    # echo 'You are on linux'
    # TODO: check if we are specifically on Ubuntu
    . ./scripts/os-specific-setup.ubuntu.sh
elif [ $currentOs = "Darwin" ]; then
    # echo 'Mac huh'
    . ./scripts/os-specific-setup.darwin.sh
else
    echo 'what realm is this?'
fi

echo '\n\nYou are ready to use cli-config now'
echo '\n\nNote: Your default shell should be ''zsh''. You can change the default shell with chsh'
echo "Paste this in your .zshrc \n\nCLI_CONFIG_ROOT='$CLI_CONFIG_ROOT'\nsource \"\$CLI_CONFIG_ROOT/main.sh\""
echo "\n\nAnd restart your shell\n\n"