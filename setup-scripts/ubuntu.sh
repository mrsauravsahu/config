echo "\n\nCLI-CONFIG: Updating apt\n\n"
sudo apt update -y

echo "\n\nCLI-CONFIG: Setting up dependencies\n\n"
deps='python python-dev python-pip'
sudo apt install $deps

packages='autojump thefuck'
echo "\n\nCLI-CONFIG: Installing '$packages' \n\n"
sudo apt install $packages