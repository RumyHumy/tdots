#!/bin/bash

while type dwm > /dev/null; do
	sleep 2
	~/tdots/scr/dwm/startup.sh
	dwm && continue || break;
done
