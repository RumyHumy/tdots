#!/bin/bash
 
cd ~/tdots

git status | grep -q "nothing to commit" ; echo $?

if [ ! git status | grep -q "nothing to commit"]; then
    echo "[TDOTS] Nothing to sync!"
	exit 0
fi

git pull
git add *
git commit -am "$(date)"
git push
