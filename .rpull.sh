#!/bin/bash
rclone sync -v ssDrive:$1 $1
