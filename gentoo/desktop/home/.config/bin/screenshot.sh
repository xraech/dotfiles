#!/bin/dash
# Screenshot wrapper
# Uses maim (which uses slop)
# "Friendship ended with scrot. Now maim is my best friend."

SCREENSHOTS_DIR=~/Pictures/Screenshots
TIMESTAMP="$(date +%d.%m.%Y-%H.%M.%S)"
FILENAME=$SCREENSHOTS_DIR/$TIMESTAMP.screenshot.png
PHOTO_ICON_PATH=~/.icons/oomox-only_icons/categories/scalable/applications-photography.svg

if [ "$1" = "-s" ]; then
    # Area/window selection.
    notify-send 'Select area to capture.' --urgency low -i $PHOTO_ICON_PATH
    sleep 0.2 ; scrot -s $FILENAME
    if [ "$?" = "0" ]; then
        notify-send "Screenshot taken." --urgency low -i $PHOTO_ICON_PATH
    fi
elif [ "$1" = "-c" ]; then
    # Copy selection to clipboard
    notify-send 'Select area to copy to clipboard.' --urgency low -i $PHOTO_ICON_PATH
    sleep 0.2; scrot -s '/tmp/scrot.png'
    if [ "$?" = "0" ]; then
        xclip -selection clipboard -t image/png /tmp/scrot.png
        notify-send "Copied selection to clipboard." --urgency low -i $PHOTO_ICON_PATH
        rm /tmp/scrot.png
    fi
elif [ "$1" = "-b" ]; then
    # Browse with sxiv
    cd $SCREENSHOTS_DIR ; sxiv $(ls -t) &
elif [ "$1" = "-e" ]; then
    # Edit last screenshot with GIMP
    cd $SCREENSHOTS_DIR ; gimp $(ls -t | head -n1) & notify-send 'Opening last screenshot with GIMP' --urgency low -i ~/.icons/oomox-only_icons/categories/scalable/applications-painting.svg
else
    # Full screenshot
    scrot $FILENAME
    notify-send "Screenshot taken." --urgency low -i $PHOTO_ICON_PATH
fi
