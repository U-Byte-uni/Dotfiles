#!/bin/bash

# Check if System Monitor is running
if pgrep -f "gnome-system-monitor" > /dev/null; then
    # If running, kill it (close it)
    pkill -f "gnome-system-monitor"
else
    # If not running, start it
    gnome-system-monitor &
fi
