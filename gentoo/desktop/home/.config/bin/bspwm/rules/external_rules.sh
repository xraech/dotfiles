#!/bin/dash
wmtitle=$(xprop -id "$1"  WM_NAME | cut -d\" -f2 | cut -d\| -f1)
if [ "$wmtitle" = "yuzu" ];
then
    echo state=fullscreen desktop'^4' follow=on
fi
