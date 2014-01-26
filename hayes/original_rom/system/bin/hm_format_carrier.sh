umount /carrier

mke2fs -T ext4 -j -m 0 -b 4096 -L CARRIER /dev/block/platform/msm_sdcc.1/by-name/carrier
tune2fs -C 1 /dev/block/platform/msm_sdcc.1/by-name/carrier

mount -r -w -t ext4 /dev/block/platform/msm_sdcc.1/by-name/carrier /carrier