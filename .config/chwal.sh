#!/bin/bash
nitrogen --set-zoom-fill $1
wal -i $1
betterlockscreen-master/betterlockscreen -u $1
.config/polybar/shades/scripts/pywal.sh $1

