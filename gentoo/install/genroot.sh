#!/bin/sh
chroot /mnt/gentoo /bin/bash
source /etc/profile
export PS1="(chroot) ${PS1}"

alias vi='busybox vi'

# fstab
cat << 'EOF' > /etc/fstab
# <fs>      <mountpoint>    <type>  <opts>                                              <dump/pass>
/dev/nvme0n1p9   /               btrfs   rw,noatime,compress=lzo,autodefrag,subvol=root      0 0
/dev/nvme0n1p9   /home           btrfs   rw,noatime,compress=lzo,autodefrag,subvol=home      0 0
/dev/nvme0n1p8   none            swap    sw                                                  0 0
/dev/nvme0n1p4   /boot           btrfs   rw,noatime                                          0 0
EOF
