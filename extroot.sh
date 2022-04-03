DEV="sda"
mkdir -p /tmp/introot
mkdir -p /tmp/extroot
mount --bind / /tmp/introot
mount /dev/$DEV /tmp/extroot

tar -C /tmp/introot -cvf - . | tar -C /tmp/extroot -xf -

#umount /tmp/introot
#umount /tmp/extroot
