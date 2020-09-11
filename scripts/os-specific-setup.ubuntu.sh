echo "\n\nCLI-CONFIG: Updating apt"
cmd='apt update -y'
echo "CLI-CONFIG: $cmd"
eval $cmd

echo "\n\nCLI-CONFIG: Setting up dependencies"
cmd='apt install -y python python-dev python-pip'
echo "CLI-CONFIG: $cmd"
eval $cmd

packages='autojump thefuck'
echo "\n\nCLI-CONFIG: Installing '$packages'"
cmd="apt install -y $packages"
echo "CLI-CONFIG: $cmd"
eval $cmd