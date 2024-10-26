#!/bin/bash

set -x

sudo dhcpcd

sudo systemctl enable iwd
sudo systemctl start iwd

iwctl station wlan0 connect $1 --passphrase $2


