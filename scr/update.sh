#!/bin/bash

[ ! -n "$ZSH_VERSION" ] && chsh -s /usr/bin/zsh

rm ~/.zshrc
ln -s ~/tdots/conf/zshrc ~/.zshrc

rm ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim
ln -s ~/tdots/conf/nvim/init.vim ~/.config/nvim/init.vim

rm ~/.config/lf/lfrc
mkdir -p ~/.config/lf
ln -s ~/tdots/conf/lf/lfrc ~/.config/lf/lfrc

rm ~/.config/yazi/yazi.toml
mkdir -p ~/.config/yazi
ln -s ~/tdots/conf/yazi/yazi.toml ~/.config/yazi

cd ~/tdots
~/tdots/scr/sync.sh
