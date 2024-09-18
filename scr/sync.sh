#!/bin/bash

cd tdots

git pull

if git status --porcelain | grep -q .;
then
	echo "[TDOTS] Commit"
	git add *
	git commit -am "$(date)"
	git push
fi

cd
