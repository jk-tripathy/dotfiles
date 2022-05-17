#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/shades"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q main -c "$DIR"/config-focus.ini &

my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-A-0')
if [[ $my_laptop_external_monitor == *2000x1200+2000+0* ]]; then
    polybar -q main -c "$DIR"/config2.ini &
fi

