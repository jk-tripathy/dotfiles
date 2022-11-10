#!/bin/bash
if ! pgrep -x "rclone" > /dev/null
then
	rclone copy --bwlimit off:off gdrive:sync /home/jkt/sync
	rclone sync --bwlimit off:off /home/jkt/sync gdrive:sync
	XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send -h int:transient:1 -u normal Rclone "gDrive Synced"
fi

