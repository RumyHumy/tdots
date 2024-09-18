#!/bin/sh

<<<<<<< HEAD
if echo $PREFIX | grep -o "com.termux"; then
	pkg install gh neovim zsh tmux yazi
fi
=======
echo "instal gh neovim zsh tmux yazi"

chsh -s /bin/zsh
>>>>>>> c8cc87db3df0f2587eb10df516d1d65cb6633185

git config --global user.email "Email"
git config --global user.name "Name"

~/tdots/scr/update.sh

gh auth login


