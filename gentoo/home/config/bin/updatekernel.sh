#!/bin/dash

cp /home/xendak/Downloads/dotfiles/gentoo/kernel/kernelconfig /usr/src/linux/.config

make oldconfig
make -j8 modules_prepare || { echo "make modules_prepare failed"; exit 1; }
make -j8 || {  echo "make -j5 failed"; exit 2; }
make -j8 modules_install || { echo "make modules_install failed";  exit 3; }
make -j8 install && echo "Don't forget to update boot loader menu"

echo "Rebuilding Nvidia"
emerge @modules-rebuild
echo "Done"

echo "Mounting boot partition
	Please change grub loader"
mount /dev/sda1/ /mnt/arch/boot

vim /mnt/arch/boot/grub/grub.cfg

echo "Done"
