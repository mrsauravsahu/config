# load cli-config env variables
source $CLI_CONFIG_ROOT/scripts/env.sh

# run the configuration for all installed programs
source $CLI_CONFIG_PROGRAMS_CONF

# activate antigen
source $CLI_CONFIG_ROOT/current/antigen.zsh

# use antigen to setup the terminal
antigen use oh-my-zsh
antigen bundle mafredri/zsh-async
antigen theme denysdovhan/spaceship-prompt
antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-autosuggestions
# Doesn't work on Mac without direnv and autojump installed with brew
antigen bundle ptavares/zsh-direnv
antigen bundle autojump
antigen bundle zsh-users/zsh-syntax-highlighting

# apply all antigen changes
antigen apply

# use current node LTS version with nvm
# suppress output
nvm use --lts &> /dev/null

# alias cls to clear
alias cls=clear

# configure thefuck
eval $(thefuck --alias)

# run ssh agent
eval "$(ssh-agent -s)" &> /dev/null

# My aliases
alias gg='open -a Microsoft\ Edge `grtu .`'
alias net='/usr/local/share/dotnet/dotnet'
alias pscode='code --user-data-dir ~/vscode-profiles/personal/data --extensions-dir ~/vscode-profiles/personal/extensions'