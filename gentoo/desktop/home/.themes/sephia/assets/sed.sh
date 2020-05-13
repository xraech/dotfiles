#!/bin/sh
sed -i \
         -e 's/#ece4da/rgb(0%,0%,0%)/g' \
         -e 's/#401e1b/rgb(100%,100%,100%)/g' \
    -e 's/#ece4da/rgb(50%,0%,0%)/g' \
     -e 's/#7492A1/rgb(0%,50%,0%)/g' \
     -e 's/#f5eeef/rgb(50%,0%,50%)/g' \
     -e 's/#401e1b/rgb(0%,0%,50%)/g' \
	"$@"
