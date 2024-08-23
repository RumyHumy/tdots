#!/bin/sh

if echo $PREFIX | grep -o "com.termux"; then
	pkg install gh neovim zsh tmux lf
fi

git config --global user.email "Email"
git config --global user.name "Name"
gh auth login
