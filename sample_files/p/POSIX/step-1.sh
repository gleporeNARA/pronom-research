#!/bin/sh
#
/sbin/insmod /lib/modules/2.6.3/kernel/drivers/media/video/videodev.ko
/sbin/insmod /lib/modules/2.6.3/kernel/drivers/media/video/v4l2-common.ko
/sbin/lsmod
