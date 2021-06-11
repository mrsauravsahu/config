export GOROOT="${CLI_CONFIG_ROOT}/curernt/go"
mkdir $GOROOT

echo "\n\n# go configuration" >> $CLI_CONFIG_PROGRAMS_CONF

echo 'export GOROOT="$CLI_CONFIG_ROOT/current/go"' >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export PATH=$PATH:$GOPATH/bin:$GOROOT/bin' >> $CLI_CONFIG_PROGRAMS_CONF