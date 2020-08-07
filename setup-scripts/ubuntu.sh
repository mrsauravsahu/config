echo "\n\nCLI-CONFIG: Updating apt\n\n"
cmd='sudo apt update -y'
echo "\n\nCLI-CONFIG: $cmd"
eval $cmd

echo "\n\nCLI-CONFIG: Setting up dependencies\n\n"
cmd='sudo apt install python python-dev python-pip'
echo "\n\nCLI-CONFIG: $cmd"
eval $cmd

packages='autojump thefuck'
echo "\n\nCLI-CONFIG: Installing '$packages' \n\n"
cmd="sudo apt install $packages"
echo "\n\nCLI-CONFIG: $cmd"
eval $cmd