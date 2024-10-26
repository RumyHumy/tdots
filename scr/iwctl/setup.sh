#!/bin/bash

set -x

cat \
	./iwctl-autoconnect.service.template \
	| sed "s@<DIR>@$(pwd)@" \
	| sed "s@<SSID>@$1@" \
	| sed "s@<PASSPHRASE>@$2@" \
	> ./iwctl-autoconnect.service

sudo cp ./iwctl-autoconnect.service /etc/systemd/system

sudo systemctl enable iwctl-autoconnect
sudo systemctl start iwctl-autoconnect

