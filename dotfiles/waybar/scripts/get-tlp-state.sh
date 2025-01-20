#!/bin/bash
state=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)
case "$state" in
    "performance") echo "PERF" ;;
    "powersave") echo "POWER" ;;
    *) echo "?" ;;
esac
