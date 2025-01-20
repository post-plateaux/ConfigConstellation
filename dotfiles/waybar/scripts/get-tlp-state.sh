#!/bin/bash

# Check if AC is connected - try multiple possible AC adapter names
ac_status=$(cat /sys/class/power_supply/AC*/online /sys/class/power_supply/ADP*/online 2>/dev/null | grep "1" || echo "0")
governor=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

if [ -n "$ac_status" ]; then
    echo "PERF"
else
    if [ "$governor" = "powersave" ]; then
        echo "BATT"
    else
        echo "PERF"
    fi
fi
