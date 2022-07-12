#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
export INSTALL_ZSH=true
export USERNAME=`whoami`

## update and install required packages
sudo apt-get update
sudo apt-get -y install --no-install-recommends apt-utils dialog 2>&1
sudo apt-get install -y \
  fonts-firacode

sudo fc-cache -f -v

chsh -s /usr/bin/zsh $USERNAME
cp machine-settings.json /home/codespace/.vscode-remote/data/Machine/settings.json