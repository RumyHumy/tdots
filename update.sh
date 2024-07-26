#!/bin/bash

chsh -s /usr/bin/zsh

cp ~/tdots/conf/.zshrc ~
mkdir -p ~/.config/nvim
cp -r ~/tdots/conf/nvim/* ~/.config/nvim

cd ~/tdots
~/tdots/sync.sh
