CLI_CONFIG_THEME='denysdovhan/spaceship-prompt'

# load cli-config env variables
source $CLI_CONFIG_ROOT/scripts/env.sh

# run the configuration for all installed programs
source $CLI_CONFIG_PROGRAMS_CONF


# My aliases
alias gg='open -a Microsoft\ Edge `grtu .`'
alias net='/usr/local/share/dotnet/dotnet'
alias pscode='code --user-data-dir ~/vscode-profiles/personal/data --extensions-dir ~/vscode-profiles/personal/extensions'