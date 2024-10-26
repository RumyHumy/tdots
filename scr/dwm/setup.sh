#!/bin/bash

set -x

sudo pacman -Sy git xorg-server xorg-xinit xorg-xrandr xorg-xsetroot xorg-xset firefox

mkdir ~/opt
cd ~/opt

if [ ! $? -eq 0 ]; then
	echo "[$0] Unable to access ~/opt"
	exit;
fi

git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu

chown dwm
chown st
chown dmenu

cd ~/opt/dwm
sudo make install clean
cd ~/opt/st
sudo make install clean
cd ~/opt/dmenu
sudo make install clean

rm ~/.xinitrc
ln -s ~/tdots/scr/dwm/xinitrc ~/.xinitrc
