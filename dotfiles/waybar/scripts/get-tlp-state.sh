#!/bin/bash
state=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor 2>/dev/null)
if [ -z "$state" ]; then
    echo "? (no access)"
    exit 1
fi

echo "$state" >> /tmp/waybar-tlp-debug.log

if [ "$state" = "performance" ]; then
    echo "󰓅"  # Icon for performance mode
elif [ "$state" = "powersave" ]; then
    echo "󰾆"  # Icon for power save mode
else
    echo "? ($state)"
fi
