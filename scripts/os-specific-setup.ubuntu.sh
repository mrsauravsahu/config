echo "\n\nCLI-CONFIG: Setting up dependencies"
cmd='apt install -y --no-install-recommends python python-dev python3-distutils'
echo "CLI-CONFIG: $cmd"
eval $cmd

packages='autojump thefuck'
echo "\n\nCLI-CONFIG: Installing '$packages'"
cmd="apt install -y --no-install-recommends $packages"
echo "CLI-CONFIG: $cmd"
eval $cmd