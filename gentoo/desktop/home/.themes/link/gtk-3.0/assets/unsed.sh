#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#000f1e/g' \
         -e 's/rgb(100%,100%,100%)/#c2cba7/g' \
    -e 's/rgb(50%,0%,0%)/#081119/g' \
     -e 's/rgb(0%,50%,0%)/#25684F/g' \
 -e 's/rgb(0%,50.196078%,0%)/#25684F/g' \
     -e 's/rgb(50%,0%,50%)/#02202a/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#02202a/g' \
     -e 's/rgb(0%,0%,50%)/#c2cba7/g' \
	"$@"
