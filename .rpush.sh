#!/bin/bash
if ! pgrep -x "rclone" > /dev/null
then
	rclone copy --bwlimit off:off --max-age 7d gdrive:sync /home/jkt/sync
	rclone sync --bwlimit off:off --max-age 7d /home/jkt/sync gdrive:sync
	XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send -h int:transient:1 -u normal Rclone "gDrive Synced"
fi


