#!/usr/bin/env bash

# Copy the default config file if not present already

############
# includes #
############

source ${BASH_SOURCE%/*}/colors.sh
source ${BASH_SOURCE%/*}/install_functions.sh
source ${BASH_SOURCE%/*}/zsh/zshenv

################
# presentation #
################

echo -e "${yellow}!!! ${red}WARNING${yellow} !!!"
echo -e "${light_red}This script will delete all your configuration files!"
echo -e "${light_red}Use it at your own risks."

if [ $# -ne 1 ] || [ "$1" != "-y" ];
    then
        echo -e "${yellow}Press a key to continue...\n"
        read key;
fi

###########
# INSTALL #
###########

# Install
. "$DOTFILES/install/install-zsh.sh"

dot_is_installed git && dot_install git