#!/bin/sh
sed -i \
         -e 's/#232323/rgb(0%,0%,0%)/g' \
         -e 's/#9a8e6f/rgb(100%,100%,100%)/g' \
    -e 's/#1d1d1d/rgb(50%,0%,0%)/g' \
     -e 's/#7b745b/rgb(0%,50%,0%)/g' \
     -e 's/#1d1d1d/rgb(50%,0%,50%)/g' \
     -e 's/#9a8e6f/rgb(0%,0%,50%)/g' \
	"$@"