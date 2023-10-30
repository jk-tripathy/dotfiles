# yeet2drive
# yoink
# rclone sync -uM --fast-list --transfers=5 --checkers=5  gdrive:Sync/ ~/Sync/
# yeet
rclone sync -uM --fast-list --transfers=5 --checkers=5 ~/Sync/ gdrive:Sync/
notify-send -t 500 "Synced files to GDrive"
