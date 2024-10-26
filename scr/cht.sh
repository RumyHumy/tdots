#!/bin/bash

cd ~/tdots/cht

if [ ! $? -eq 0 ]; then
	echo "[cht.sh] Can't cd into ~/tdots/cht"
	exit
fi

fzf | less
