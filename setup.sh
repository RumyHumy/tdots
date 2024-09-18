#!/bin/sh

chsh -s /usr/bin/zsh

pkg install gh neovim zsh tmux yazi
apt install gh neovim zsh tmux yazi

git config --global user.email "Email"
git config --global user.name "Name"

~/tdots/scr/update.sh

gh auth login


