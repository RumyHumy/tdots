#!/bin/bash

rm ~/.zshrc
ln -s ~/tdots/conf/zshrc ~/.zshrc

rm ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim
ln -s ~/tdots/conf/nvim/init.vim ~/.config/nvim/init.vim

rm ~/.config/yazi/yazi.toml
mkdir -p ~/.config/yazi
ln -s ~/tdots/conf/yazi/yazi.toml ~/.config/yazi

rm ~/.tmux.conf
ln -s ~/tdots/conf/tmux/tmux.conf ~/.tmux.conf

cd ~/tdots
~/tdots/scr/sync.sh
