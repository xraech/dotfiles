#!/bin/sh
sed -i \
         -e 's/#000f1e/rgb(0%,0%,0%)/g' \
         -e 's/#c2cba7/rgb(100%,100%,100%)/g' \
    -e 's/#081119/rgb(50%,0%,0%)/g' \
     -e 's/#25684F/rgb(0%,50%,0%)/g' \
     -e 's/#02202a/rgb(50%,0%,50%)/g' \
     -e 's/#c2cba7/rgb(0%,0%,50%)/g' \
	"$@"
