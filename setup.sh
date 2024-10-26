#!/bin/bash

set -x

# PACKEGES >>>

git config --global user.name "Khasanshin Ramil"
git config --global user.email "khasanshin.ramil@list.ru"

# <<< PACKEGES

# CONFIGS >>>

# NeoVim
rm ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim
ln -s ~/tdots/conf/nvim/init.vim ~/.config/nvim/init.vim

# ZSH
rm ~/.zshrc
ln -s ~/tdots/conf/zshrc ~/.zshrc

# TMUX
ln -s ~/tdots/conf/tmux/tmux.conf ~/.tmux.conf
rm ~/.tmux.conf

# Yazi
rm ~/.config/yazi/yazi.toml
mkdir -p ~/.config/yazi
ln -s ~/tdots/conf/yazi/yazi.toml ~/.config/yazi

# <<< CONFIGS

cd ~/tdots
~/tdots/sync.sh
