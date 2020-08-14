echo "CLI-CONFIG: Installing pyenv\n\n"

CLI_CONFIG_PYENV_ROOT=$CLI_CONFIG_ROOT/current/pyenv

git clone --depth=1 https://github.com/pyenv/pyenv.git $CLI_CONFIG_PYENV_ROOT

currentOs=`uname -s`
if [ $currentOs = "Linux" ]; then
    # TODO: check if we are specifically on Ubuntu
    echo "\n\nCLI-CONFIG: Setting up dependencies for pyenv"
    cmd='sudo apt-get install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev'
    echo "CLI-CONFIG: $cmd"
    eval $cmd
elif [ $currentOs = "Darwin" ]; then
    # echo 'Mac huh'
fi


echo "\n\n# pyenv configuration" >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export PYENV_ROOT="$CLI_CONFIG_ROOT/current/pyenv"' >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export PATH="$PYENV_ROOT/bin:$PATH"\n' >> $CLI_CONFIG_PROGRAMS_CONF
echo 'eval "$(pyenv init -)"' >> $CLI_CONFIG_PROGRAMS_CONF