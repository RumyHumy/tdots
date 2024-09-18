#!/bin/bash

cd tdots

if git status --porcelain | grep -q .;
then
	echo "[TDOTS] Commit"
	git add *
	git commit -am "$(date)"
fi

git pull
git push

cd
