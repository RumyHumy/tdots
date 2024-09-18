#!/bin/bash

cd tdots

if git status --porcelain | grep -q .;
then
	echo "[TDOTS] Commit"
	git add *
	git commit -am "$(date)"
fi

git fetch origin

if [[ $? -ne 0 ]];
then
	git pull && \
	git push && \
else
	exit 0
fi

cd
