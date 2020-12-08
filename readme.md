# cli-config

Safekeeping your shell configuration for setting up easily later

## Features
- one script setup
- works with Mac and Linux (Ubuntu)
- adds lots of helper tools to the shell

> Coming soon - restore apps from brew cask on Mac

---

## List of tools 

### Basics
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [antigen](https://github.com/zsh-users/antigen)

### Programming Support
- [nvm (Node)](https://github.com/nvm-sh/nvm)
- [pyenv (Python)](https://github.com/pyenv/pyenv)
- [netcore (.NET Core)](https://github.com/dotnet/core) 

### Helpers and Goodies
- [direnv](https://github.com/direnv/direnv)
- [autojump](https://github.com/wting/autojump)
- [thefuck](https://github.com/nvbn/thefuck)

### Appearence
- [sindresorhus/pure (theme)](https://github.com/sindresorhus/pure)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

---

## Getting Started

You require these:
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

> Before starting install, you can turn off some program installs if you don't use them. Programs installs turned off by default: .NET Core.
>
> Comment out programs you don't want to use in setup.sh 
```bash
...

echo "\n\nCLI-CONFIG: Installing programs\n\n"
. $CLI_CONFIG_ROOT/scripts/install.ohmyzsh.sh
. $CLI_CONFIG_ROOT/scripts/install.nvm.sh
. $CLI_CONFIG_ROOT/scripts/install.pyenv.sh
# . $CLI_CONFIG_ROOT/scripts/install.dotnet.sh

...
```

To start the setup, execute the setup.sh file.
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