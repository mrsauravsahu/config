echo "CLI-CONFIG: Installing nvm\n\n"

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

echo "\n\n# .nvmrc support" >> $CLI_CONFIG_PROGRAMS_CONF
echo 'autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc' >> $CLI_CONFIG_PROGRAMS_CONF

echo "\n\n# add nvm to path" >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export PATH="$NVM_DIR:$PATH"' >> $CLI_CONFIG_PROGRAMS_CONF
