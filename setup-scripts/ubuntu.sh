packages='autojump thefuck python python-dev pip'

echo "\n\nCLI-CONFIG: Installing '$packages' \n\n"
sudo apt update -y
sudo apt install $packages -y