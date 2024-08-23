#!/bin/bash

if [[ ! $(echo $SHELL | awk -F/ '{print $NF}') != "zsh" ]]; then
	echo "zsh is the default shell"
	chsh -s /usr/bin/zsh
fi

rm ~/.zshrc
ln -s ~/tdots/conf/zshrc ~/.zshrc

rm ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim
ln -s ~/tdots/conf/nvim/init.vim ~/.config/nvim/init.vim

rm ~/.config/lf/lfrc
mkdir -p ~/.config/lf
ln -s ~/tdots/conf/lf/lfrc ~/.config/lf/lfrc

cd ~/tdots
~/tdots/scr/sync.sh
