#!/bin/bash
state=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)
if [ "$state" = "performance" ]; then
    echo "󰓅"  # Icon for performance mode
elif [ "$state" = "powersave" ]; then
    echo "󰾆"  # Icon for power save mode
else
    echo "?"
fi
