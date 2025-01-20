#!/bin/bash

# Check if AC is connected
ac_status=$(cat /sys/class/power_supply/AC/online 2>/dev/null || echo "0")
governor=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

if [ "$ac_status" = "1" ]; then
    echo "PERF"
elif [ "$governor" = "powersave" ]; then
    echo "BATT"
else
    echo "?"
fi
