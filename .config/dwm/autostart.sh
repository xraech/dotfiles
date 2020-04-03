#!/bin/bash
pgrep numlockx || numlockx &
pgrep dunst || dunst &
pgrep picom || picom --config /home/raech/.config/picom/picom.conf &
pgrep sxhkd || sxhkd -c /home/raech/.config/dwm/sxhkdrc &
pgrep imwheel || imwheel -b 45
source /home/raech/.fehbg
pgrep mpd || mpd
