#!/bin/dash


GAME=`cd /home/raech/Documents/Webnovels && ls *.epub | menu -p Book:`
echo $GAME
cd /home/raech/Documents/Webnovels && ebook-viewer "${GAME}"
