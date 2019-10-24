#!/bin/dash

brightness=$(cat /tmp/brightness)

xbacklight -set $brightness
