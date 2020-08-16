echo "CLI-CONFIG: Installing dotnet\n\n"

curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --install-dir $CLI_CONFIG_ROOT/current/dotnet --channel LTS

echo "\n\n# dotnet configuration" >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export PATH="$CLI_CONFIG_ROOT/current/dotnet:$PATH"' >> $CLI_CONFIG_PROGRAMS_CONF