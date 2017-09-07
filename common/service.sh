#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

ENABLE="$(busybox cat /data/CrossBreeder/ENABLE)"

rm -f /data/*.pid

if [ "$ENABLE" = "1" ]; then

rm -f /data/cb_CHECK_PROCS.log
touch /data/cb_CHECK_PROCS.log
( /system/etc/CrossBreeder/CHECK_PROCS )&
/system/etc/CrossBreeder/zzCrossBreeder
/system/etc/CrossBreeder/zzCHECK_NET_DNS
/system/etc/CrossBreeder/FDE_Governor_Tweaks
( /system/etc/CrossBreeder/LoopySmoothness )&
/system/etc/CrossBreeder/SQLITE
/system/etc/CrossBreeder/DynBS

HR="$(busybox cat /data/CrossBreeder/DynRAM/TIME/HR)"
MIN="$(busybox cat /data/CrossBreeder/DynRAM/TIME/MIN)"
SEC="$(busybox cat /data/CrossBreeder/DynRAM/TIME/SEC)"
TIME=$((($HR * 3600)+($MIN * 60)+$SEC))

(while [ -f /system/etc/CrossBreeder/DynRAM ]; do

/system/etc/CrossBreeder/DynRAM

sleep $TIME

done) &

else
echo "CrossBreeder Lite Disabled" >> /data/cb_CHECK_PROCS.log
fi
