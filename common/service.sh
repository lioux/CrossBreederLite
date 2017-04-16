#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

/system/etc/CrossBreeder/zzCrossBreeder
/system/etc/CrossBreeder/zzCHECK_NET_DNS
/system/etc/CrossBreeder/FDE_Governor_Tweaks
/system/etc/CrossBreeder/VMHeap
/system/etc/CrossBreeder/SQLITE
/system/etc/CrossBreeder/dynbsd
