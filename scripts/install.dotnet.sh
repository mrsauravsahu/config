namespace cliConfig

source $CLI_CONFIG_ROOT/scripts/env.sh

Log "CLI-CONFIG: Installing dotnet"

mkdir $CLI_CONFIG_ROOT/current/dotnet

dotnetInstallerLocation=$CLI_CONFIG_TOOLS_LOCATION/dotnet-install.sh 
wget -O $dotnetInstallerLocation https://dot.net/v1/dotnet-install.sh
bash $dotnetInstallerLocation --install-dir $CLI_CONFIG_ROOT/current/dotnet --channel Current

echo "# dotnet configuration" >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export DOTNET_ROOT="$CLI_CONFIG_ROOT/current/dotnet"' >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export PATH="$CLI_CONFIG_ROOT/current/dotnet:$PATH"' >> $CLI_CONFIG_PROGRAMS_CONF