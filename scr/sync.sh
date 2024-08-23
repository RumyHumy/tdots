#!/bin/bash
 
cd ~/tdots

git status | grep -q "nothing to commit"

if [ $? -eq 0 ]; then
    echo "[TDOTS] Nothing to sync!"
	exit 1
fi

git pull
git add *
git commit -am "$(date)"
git push
