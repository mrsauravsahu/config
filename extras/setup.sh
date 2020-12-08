#! /usr/bin/env zsh

# Find the directory where setup.sh is
# This is relative path to the setup.sh script
CLI_CONFIG_EXTRAS_ROOT=`dirname $0`

# Goto config dir
cd $CLI_CONFIG_EXTRAS_ROOT

# Convert CLI_CONFIG_EXTRAS_ROOT to absolute path
CLI_CONFIG_EXTRAS_ROOT=`pwd`

currentOs=`uname -s`
if [ $currentOs = "Linux" ]; then
    echo Can\'t do anything extra for Linux!
elif [ $currentOs = "Darwin" ]; then
    echo "\n\nCLI-CONFIG: Installing brew packages\n\n"
    cat $CLI_CONFIG_EXTRAS_ROOT/brew-list.txt | sed | xargs brew install 

    echo "\n\nCLI-CONFIG: Installing brew cask packages\n\n"
    cat $CLI_CONFIG_EXTRAS_ROOT/brew-cask-list.txt | sed | xargs brew install --cask 
else
    echo 'What realm is this?'
fi