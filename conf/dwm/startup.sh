#!/bin/bash

set -x

setxkbmap us,ru -option grp:alt_shift_toggle
xset r rate 200 30
xrandr --output eDP-1 --scale 0.6x0.6