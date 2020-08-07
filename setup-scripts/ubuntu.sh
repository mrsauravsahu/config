packages='autojump thefuck'

echo "\n\nCLI-CONFIG: Installing '$packages' \n\n"
sudo apt update -y
sudo apt install $packages -y