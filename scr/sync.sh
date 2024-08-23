#!/bin/bash
 
cd ~/tdots

git fetch origin

if [ $(git rev-list --count HEAD..origin/main) -gt 0 ]; then
    echo "nah"
else
    echo "k"
fi

git pull
git add *
git commit -am "$(date)"
git push

