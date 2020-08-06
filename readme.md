# cli-config

Safekeeping your shell configuration for setting up easily later

## Features
- one script setup
- works with Mac and Linux (Ubuntu)
- adds lots of helper tools to the shell

> Coming soon - restore apps from brew cask on Mac

## Requirements

- zsh
- curl
- wget
- git

## Setup

Execute the setup script
```zsh
./<path-to-setup.sh>
# example
~/Documents/code/personal/config/setup.sh
```

## Using cli-config

Once the setup is done, you can run the main script in your `.zshrc`
You can paste the instructions you get once you run the setup script

Or add these lines to your `.zshrc`:

```zsh
CLI_CONFIG_ROOT='<path-to-cli-config>'
source "$CLI_CONFIG_ROOT/main.sh"

# example
CLI_CONFIG_ROOT='/Users/sauravsahu/Documents/code/personal/config'
source "$CLI_CONFIG_ROOT/main.sh"
```