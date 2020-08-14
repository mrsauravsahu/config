echo "\n\nCLI-CONFIG: Updating apt"
cmd='sudo apt update -y'
echo "CLI-CONFIG: $cmd"
eval $cmd

echo "\n\nCLI-CONFIG: Setting up dependencies"
cmd='sudo apt install python python-dev python-pip'
echo "CLI-CONFIG: $cmd"
eval $cmd

packages='autojump thefuck'
echo "\n\nCLI-CONFIG: Installing '$packages'"
cmd="sudo apt install $packages"
echo "CLI-CONFIG: $cmd"
eval $cmd