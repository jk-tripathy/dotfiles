#!/bin/sh

# yeet2drive
rclone sync -uM --fast-list --transfers=5 --checkers=5 Sync/ gdrive:Sync/
