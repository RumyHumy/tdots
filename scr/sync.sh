#!/bin/bash
 
cd ~/tdots

git status | grep -q "nothing to commit"

#if [ ! -z $? ]; then
#    echo "[TDOTS] Nothing to sync!"
#	exit 0
#fi

git pull
git add *
git commit -am "$(date)"
git push
