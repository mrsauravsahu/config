echo "\n\nCLI-CONFIG: Updating apt\n\n"
sudo apt update -y

echo "\n\nCLI-CONFIG: Setting up dependencies\n\n"
deps='python python-dev python-pip'
sudo apt install $deps -y

echo "\n\nCLI-CONFIG: Installing '$packages' \n\n"
packages='autojump thefuck'
sudo apt install $packages -y