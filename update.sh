#!/bin/bash

if [[ -z "$ZSH_VERSION" ]]; then
	chsh -s /usr/bin/zsh
fi

cp ~/tdots/conf/.zshrc ~
mkdir -p ~/.config/nvim
cp -r ~/tdots/conf/nvim/* ~/.config/nvim

cd ~/tdots
~/tdots/sync.sh
