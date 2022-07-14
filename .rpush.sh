#!/bin/bash
rclone sync -P -L --max-age 1w $1 ssDrive:$1
