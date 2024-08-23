#!/bin/bash
 
cd ~/tdots

git fetch origin

git status | grep -q "nothing to commit, working tree clean"

if [ -z $@ ]; then
    echo "nah"
else
    echo "k"
fi

git pull
git add *
git commit -am "$(date)"
git push

