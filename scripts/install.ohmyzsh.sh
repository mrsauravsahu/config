echo "CLI-CONFIG: Installing ohmyzsh\n\n"

ZSH="$CLI_CONFIG_ROOT/current/ohmyzsh"
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh

echo "\n\n# ohmyzsh configuration" >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export ZSH="$CLI_CONFIG_ROOT/current/ohmyzsh"' >> $CLI_CONFIG_PROGRAMS_CONF