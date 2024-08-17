#!/bin/bash

if [[ $(echo $SHELL | awk -F/ '{print $NF}') != "zsh" ]]; then
	echo "zsh is the default shell"
	chsh -s /usr/bin/zsh
fi

cp ~/tdots/conf/.zshrc ~

mkdir -p ~/.config/nvim
cp -r ~/tdots/conf/nvim/* ~/.config/nvim

mkdir -p ~/.config/lf
cp -r ~/tdots/conf/lf/* ~/.config/lf

cd ~/tdots
~/tdots/sync.sh
