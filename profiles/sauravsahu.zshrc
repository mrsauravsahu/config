CLI_CONFIG_ROOT='/Users/sauravsahu/.cli'

plugins=(git)

export ZSH="$CLI_CONFIG_ROOT/current/ohmyzsh"
source $ZSH/oh-my-zsh.sh

source "$CLI_CONFIG_ROOT/main.sh"
