#!/sbin/sh

# /sbin/sh runs out of TWRP.. use it.

# Get bootdevice.. don't assume /dev/block/mmcblk0p68

# Check for /vendor existence
VENDOR=`ls -l /dev/block/bootdevice/by-name/ | grep -c vendor`

if [ ${VENDOR} -ge 1 ] ; then
# Got it, we're done...
   echo "/vendor partition found! "
   exit 0
fi

# Missing...
echo "/vendor partition missing! "
exit 1
