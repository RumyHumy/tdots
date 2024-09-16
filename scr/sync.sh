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
	echo "[TDOTS] Syncing..."
	git pull && \
	git push && \
	echo "[TDOTS] Succes"
else
	exit 0
fi

cd
