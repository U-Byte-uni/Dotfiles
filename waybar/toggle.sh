#!/bin/bash

# Check if waybar is running
if pgrep -x "waybar" > /dev/null; then
    # If running, kill it (hide)
    pkill -x "waybar"
else
    # If not running, start it
    waybar &
fi
