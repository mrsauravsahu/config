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
    echo "CLI-CONFIG: Installing apt packages"
    apt install --yes `cat $CLI_CONFIG_EXTRAS_ROOT/apt-list.txt | tr '\n' ' '`
elif [ $currentOs = "Darwin" ]; then
    echo "CLI-CONFIG: Installing brew packages"
    cat $CLI_CONFIG_EXTRAS_ROOT/brew-list.txt | sed | xargs brew install 

    echo "CLI-CONFIG: Installing brew cask packages"
    cat $CLI_CONFIG_EXTRAS_ROOT/brew-cask-list.txt | sed | xargs brew install --cask 
else
    echo 'What realm is this?'
fi