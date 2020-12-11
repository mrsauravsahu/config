#! /usr/bin/env zsh

# Find the directory where setup.sh is
# This is relative path to the setup.sh script
CLI_CONFIG_ROOT=`dirname $0`

# Goto config dir
cd $CLI_CONFIG_ROOT

# Convert CLI_CONFIG_ROOT to absolute path
CLI_CONFIG_ROOT=`pwd`

# load cli-config env variables
source $CLI_CONFIG_ROOT/scripts/env.sh

# try and clean old installation
rm -rf "$CLI_CONFIG_ROOT/current" > /dev/null 2> /dev/null || true

# Create installation folder not exists
mkdir current

# Download antigen into src folder
echo "\n\nCLI-CONFIG: Installing antigen plugin manager\n\n"
curl -L git.io/antigen > $CLI_CONFIG_ROOT/current/antigen.zsh


echo "\n\nCLI-CONFIG: Installing programs\n\n"
# Note: Comment out any program that you don't want to be installed
. $CLI_CONFIG_ROOT/scripts/install.ohmyzsh.sh
. $CLI_CONFIG_ROOT/scripts/install.nvm.sh
. $CLI_CONFIG_ROOT/scripts/install.pyenv.sh
# . $CLI_CONFIG_ROOT/scripts/install.dotnet.sh

currentOs=`uname -s`
if [ $currentOs = "Linux" ]; then
    # echo 'You are on linux'
    # TODO: check if we are specifically on Ubuntu
    . $CLI_CONFIG_ROOT/scripts/os-specific-setup.ubuntu.sh
elif [ $currentOs = "Darwin" ]; then
    # echo 'Mac huh'
    . $CLI_CONFIG_ROOT/scripts/os-specific-setup.darwin.sh
else
    echo 'what realm is this?'
fi

# generate main config script
echo >> $CLI_CONFIG_PROGRAMS_CONF
cat $CLI_CONFIG_ROOT/templates/main-config.sh >> $CLI_CONFIG_PROGRAMS_CONF

echo '\n\nYou are ready to use cli-config now'
echo '\n\nNote: Your default shell should be ''zsh''. You can change the default shell with chsh'
echo "Paste this in your .zshrc \n\nCLI_CONFIG_ROOT='$CLI_CONFIG_ROOT'\nsource \"\$CLI_CONFIG_ROOT/main.sh\""
echo "\n\nAnd restart your shell\n\n"
