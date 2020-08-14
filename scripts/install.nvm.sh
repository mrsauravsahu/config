echo "CLI-CONFIG: Installing pyenv\n\n"

# Load antigen
. $CLI_CONFIG_ROOT/current/antigen.zsh
antigen use oh-my-zsh

echo "\n\nCLI-CONFIG: Installing node.js with nvm\n\n"
NVM_DIR=$CLI_CONFIG_ROOT/current/nvm
antigen bundle lukechilds/zsh-nvm
antigen apply
nvm install --lts

echo "\n\n# nvm configuration" >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export NVM_DIR="$CLI_CONFIG_ROOT/current/nvm"' >> $CLI_CONFIG_PROGRAMS_CONF