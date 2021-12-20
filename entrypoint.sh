#!/bin/bash
rclone version
#rclone config create CLOUDNAME mega user=$UserName password=$PassWord
curl $UserName >> /.config/rclone/rclone.config
rclone version
rclone serve http $PassWord: --addr :$PORT --buffer-size 256M --dir-cache-time 12h --vfs-read-chunk-size 256M --vfs-read-chunk-size-limit 2G --vfs-cache-mode writes


