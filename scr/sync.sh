#!/bin/bash
 
cd ~/tdots

git status | grep -q "nothing to commit" ; echo $?

if [ $@ -ne 0 ]; then
    echo "[TDOTS] Nothing to sync!"
	exit 0
fi

git pull
git add *
git commit -am "$(date)"
git push
