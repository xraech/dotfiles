#!/bin/sh
mount -o defaults,noatime,compress=lzo,autodefrag,subvol=root /dev/nvme0n1p9 /mnt/gentoo
mount -o defaults,noatime,compress=lzo,autodefrag,subvol=home /dev/nvme0n1p9 /mnt/gentoo/home
mount -o defaults,noatime /dev/nvme0n1p4 /mnt/gentoo/boot

mount --types proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev 

test -L /dev/shm && rm /dev/shm && mkdir /dev/shm
mount --types tmpfs --options nosuid,nodev,noexec shm /dev/shm
chmod 1777 /dev/shm
