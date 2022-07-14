#!/bin/bash
rclone sync -P -L --max-age 1w ssDrive:$1 $1
