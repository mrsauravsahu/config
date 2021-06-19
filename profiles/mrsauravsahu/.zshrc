# Change this appropriately
CLI_CONFIG_ROOT='/workspaces'

plugins=(git)

export ZSH="$CLI_CONFIG_ROOT/current/ohmyzsh"
source $ZSH/oh-my-zsh.sh

source "$CLI_CONFIG_ROOT/profiles/mrsauravsahu/main.sh"

currentOs=`uname -s`
if [ $currentOs = 'Linux' ]; then
    alias open='xdg-open'
fi
