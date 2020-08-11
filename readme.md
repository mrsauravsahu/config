# cli-config

Safekeeping your shell configuration for setting up easily later

## Features
- one script setup
- works with Mac and Linux (Ubuntu)
- adds lots of helper tools to the shell

> Coming soon - restore apps from brew cask on Mac

## List of tools 
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [antigen](https://github.com/zsh-users/antigen)
- [nvm](https://github.com/nvm-sh/nvm)
- [direnv](https://github.com/direnv/direnv)
- [autojump](https://github.com/wting/autojump)
- [sindresorhus/pure](https://github.com/sindresorhus/pure)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [thefuck](https://github.com/nvbn/thefuck)

## Requirements

- zsh
- curl
- wget
- git

To check if you have eveything installed

```zsh
which zsh curl wget git
```

should give you the path to all the four executables, like so:

```zsh
❯ which zsh curl wget git
/bin/zsh
/usr/local/bin/curl
/usr/local/bin/wget
/usr/bin/git
```

## Setup

### 1. Clone the repo (use ssh if you fancy)
```zsh
git clone http://github.com/mrsauravsahu/cli-config
```

### 2. Execute the setup script
```zsh
./<path-to-setup.sh>
# example
~/Documents/code/personal/config/setup.sh
```

## Using cli-config

Once the setup is done, you can run the main script in your `.zshrc`
You can paste the instructions you get once you run the setup script.

Or add these lines to your `.zshrc`:

```zsh
CLI_CONFIG_ROOT='<path-to-cli-config>'
source "$CLI_CONFIG_ROOT/main.sh"

# example
CLI_CONFIG_ROOT='/Users/sauravsahu/Documents/code/personal/config'
source "$CLI_CONFIG_ROOT/main.sh"
```