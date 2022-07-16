#!/bin/bash
rclone sync -v -L $1 ssDrive:$1
