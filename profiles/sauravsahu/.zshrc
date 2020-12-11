# Change this appropriately
CLI_CONFIG_ROOT='/home/sauravsahu/.cli-config'

plugins=(git)

export ZSH="$CLI_CONFIG_ROOT/current/ohmyzsh"
source $ZSH/oh-my-zsh.sh

source "$CLI_CONFIG_ROOT/profiles/sauravsahu/main.sh"
