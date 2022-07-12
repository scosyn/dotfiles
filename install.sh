#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
export USERNAME=`whoami`

sudo apt-get install -y \
  fonts-firacode

sudo chsh -s /usr/bin/zsh $USERNAME
cp machine-settings.json /home/codespace/.vscode-remote/data/Machine/settings.json
cp .zshrc ~/.zshrc
