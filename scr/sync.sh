#!/bin/bash
cd tdots
git pull
git add *
git commit -am "$(date)"
git push
