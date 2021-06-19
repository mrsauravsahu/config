source "$( cd "${BASH_SOURCE[0]%/*}" && pwd )/lib/oo-bootstrap.sh"

CI=true

# imports from bash-oo
import util/log

namespace cliConfig
Log::AddOutput cliConfig INFO

Log "CLI-CONFIG: Starting install... $(UI.Powerline.ThumbsUp)"

# Find the directory where setup.sh is
# This is relative path to the setup.sh script
CLI_CONFIG_ROOT=`dirname $0`

# # Goto config dir
cd $CLI_CONFIG_ROOT

# # Convert CLI_CONFIG_ROOT to absolute path
CLI_CONFIG_ROOT=`pwd`

# load cli-config env variables
source $CLI_CONFIG_ROOT/scripts/env.sh

# try and clean old installation
Log "CLI-CONFIG: Trying to clean old installation: $(UI.Color.Blue)$CLI_CONFIG_ROOT/current$(UI.Color.Default)"
rm -rf "$CLI_CONFIG_ROOT/current" > /dev/null 2> /dev/null || true

# Create installation folder not exists
Log "CLI-CONFIG: Creating new installation location: $(UI.Color.Blue)$CLI_CONFIG_ROOT/current$(UI.Color.Default)"
mkdir current
mkdir $CLI_CONFIG_TOOLS_LOCATION

# Download antigen into src folder
Log "CLI-CONFIG: Installing antigen plugin manager"
curl -L git.io/antigen > $CLI_CONFIG_TOOLS_LOCATION/antigen.zsh

Log "CLI-CONFIG: Installing programs"
# Note: Comment out any program that you don't want to be installed
. $CLI_CONFIG_ROOT/scripts/install.ohmyzsh.sh
. $CLI_CONFIG_ROOT/scripts/install.nvm.sh
. $CLI_CONFIG_ROOT/scripts/install.pyenv.sh
. $CLI_CONFIG_ROOT/scripts/install.dotnet.sh

currentOs=`uname -s`
if [ $currentOs = "Linux" ]; then
    # Log 'You are on linux'
    # TODO: check if we are specifically on Ubuntu
    . $CLI_CONFIG_ROOT/scripts/os-specific-setup.ubuntu.sh
elif [ $currentOs = "Darwin" ]; then
    # Log 'Mac huh'
    . $CLI_CONFIG_ROOT/scripts/os-specific-setup.darwin.sh
else
    Log 'what realm is this?'
fi

# generate main config script
echo >> $CLI_CONFIG_PROGRAMS_CONF
cat $CLI_CONFIG_ROOT/templates/main-config.sh >> $CLI_CONFIG_PROGRAMS_CONF

echo "$(UI.Powerline.OK) $(UI.Color.Blue)You are ready to use cli-config now"
printf "\n"
zshPath=`which zsh`
printf "Note: Your default shell should be '$zshPath'. You can change the default shell with chsh\n"
printf "Paste this in your .zshrc \n\nCLI_CONFIG_ROOT='$CLI_CONFIG_ROOT'\nsource \"\$CLI_CONFIG_ROOT/main.sh\"\n\n\n"
printf "And restart your shell\n\n"
echo "Enjoy! $(UI.Powerline.Heart) - Saurav $(UI.Color.Default)"