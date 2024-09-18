#!/bin/sh

pkg install gh neovim zsh tmux yazi
sudo apt install gh neovim zsh tmux yazi

chsh -s /bin/zsh

git config --global user.email "Email"
git config --global user.name "Name"

~/tdots/scr/update.sh

gh auth login


