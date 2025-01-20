#!/bin/bash
state=$(sudo tlp-stat -p | grep "scaling_governor" | awk '{print $5}')
if [ "$state" = "performance" ]; then
    echo "󰓅"  # Icon for performance mode
elif [ "$state" = "powersave" ]; then
    echo "󰾆"  # Icon for power save mode
else
    echo "?"
fi
