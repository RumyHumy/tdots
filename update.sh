#!/bin/bash

if [ -n [ $(echo $SHELL | awk -F/ '{print $NF}') == "zsh" ]]; then
	echo "zsh is the default shell"
	chsh -s /usr/bin/zsh
fi

cp ~/tdots/conf/.zshrc ~
mkdir -p ~/.config/nvim
cp -r ~/tdots/conf/nvim/* ~/.config/nvim

cd ~/tdots
~/tdots/sync.sh
