namespace cliConfig

Log "CLI-CONFIG: Installing nvm"

Log "CLI-CONFIG: Installing node.js with nvm"
zsh -c "
. $CLI_CONFIG_ROOT/scripts/env.sh
# Load antigen
. $CLI_CONFIG_TOOLS_LOCATION/antigen.zsh
NVM_DIR=$CLI_CONFIG_ROOT/current/nvm
antigen bundle lukechilds/zsh-nvm
antigen apply
nvm install --lts
"

echo "\n\n# nvm configuration" >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export NVM_DIR="$CLI_CONFIG_ROOT/current/nvm"' >> $CLI_CONFIG_PROGRAMS_CONF

echo "\n\n# add nvm to path" >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export PATH="$NVM_DIR:$PATH"' >> $CLI_CONFIG_PROGRAMS_CONF
