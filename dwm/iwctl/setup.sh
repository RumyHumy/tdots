#!/bin/bash

set -x

cat \
	./iwctl-autoconnect.service.template \
	| sed "s@<DIR>@$(pwd)@" \
	| sed "s@<SSID>@$1@" \
	| sed "s@<PASSPHRASE>@$2@" \
	> ./iwctl-autoconnect.service

sudo cp "$0"/iwctl-autoconnect.service /etc/systemd/system

sudo systemctl unmask iwctl-autoconnect
sudo systemctl enable iwctl-autoconnect
sudo systemctl start iwctl-autoconnect
sudo systemctl daemon-reload
