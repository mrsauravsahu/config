Log "CLI-CONFIG: Updating apt"
cmd='apt update --yes'
Log "CLI-CONFIG: $cmd"
eval $cmd

Log "CLI-CONFIG: Setting up dependencies"
cmd='apt install --yes python python-dev python3-pip'
Log "CLI-CONFIG: $cmd"
eval $cmd

packages='autojump thefuck'
Log "CLI-CONFIG: Installing '$packages'"
cmd="apt install --yes $packages"
Log "CLI-CONFIG: $cmd"
eval $cmd