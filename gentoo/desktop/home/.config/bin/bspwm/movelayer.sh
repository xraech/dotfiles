#!/bin/sh
if bspc query -N -n 'focused.!normal' > /dev/null; then
        bspc node -l normal
else
        bspc node -l above
fi
