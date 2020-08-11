git clone --depth=1 https://github.com/pyenv/pyenv.git $CLI_CONFIG_ROOT/programs/pyenv

echo "\n\n# pyenv configuration" >> $CLI_CONFIG_PROGRAMS_CONF
echo "export PYENV_ROOT=\"$CLI_CONFIG_ROOT/programs/pyenv\"" >> $CLI_CONFIG_PROGRAMS_CONF
echo 'export PATH="$PYENV_ROOT/bin:$PATH"\n' >> $CLI_CONFIG_PROGRAMS_CONF
echo 'eval "$(pyenv init -)"' >> $CLI_CONFIG_PROGRAMS_CONF