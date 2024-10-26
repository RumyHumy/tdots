#!/bin/bash

set -x

cd ~/tdots/cht

if [ ! $? -eq 0 ]; then
	echo "[cht.sh] Can't cd into ~/tdots/cht"
	exit
fi

tmp=$(mktemp)

fzf > "$tmp"

less `cat "$tmp"`

rm "$tmp"
