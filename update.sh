#!/bin/bash

if [[ $(echo $SHELL | awk -F/ '{print $NF}') != "zsh" ]]; then
	echo "zsh is the default shell"
	chsh -s /usr/bin/zsh
fi

#cp ~/tdots/conf/.zshrc ~
rm ~/.zshrc
ln -s ~/tdots/conf/.zshrc ~/.zshrc

#cp -r ~/tdots/conf/nvim/* ~/.config/nvim
mkdir -p ~/.config/nvim
ln -s ~/tdots/conf/nvim/init.vim

#cp -r ~/tdots/conf/lf/lfrc ~/.config/lf
mkdir -p ~/.config/lf
ln -s ~/tdots/conf/lf/lfrc ~/.config/lf/lfrc

cd ~/tdots
~/tdots/sync.sh
