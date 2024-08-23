#!/bin/bash
 
cd ~/tdots

if git status | grep -q "Your branch is up to date"; then
    echo "up"
else
    echo "not"
fi

git pull
git add *
git commit -am "$(date)"
git push

