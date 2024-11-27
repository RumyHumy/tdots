#!/bin/bash

set -x

# What system
system=""
[ -f /bin/pacman ] && system="arch-linux"
[ $(ps -ef|grep -c com.termux ) -gt 0 ] && system="termux"

if [ "$system" = "" ]; then
	echo "Unknowns system"
	exit
fi

# Packeges
if [ "$system" = "arch-linux" ]; then
	sudo pacman -S \
		vim        \
		neovim     \
		tmux       \
		zsh        \
		github-cli \
		fzf
fi

# NeoVim
rm ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim
ln -s ~/tdots/term/nvim/init.vim ~/.config/nvim/init.vim

# ZSH
rm ~/.zshrc
ln -s ~/tdots/term/zshrc ~/.zshrc
chsh -s /bin/zsh

# TMUX
ln -s ~/tdots/term/tmux/tmux.conf ~/.tmux.conf
rm ~/.tmux.conf

# Yazi
rm ~/.config/yazi/yazi.toml
mkdir -p ~/.config/yazi
ln -s ~/tdots/term/yazi/yazi.toml ~/.config/yazi

# Git
git config --global user.name "Khasanshin Ramil"
git config --global user.email "khasanshin.ramil@list.ru"

# GitHub
gh auth login
