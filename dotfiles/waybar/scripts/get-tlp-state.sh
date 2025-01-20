#!/bin/bash
state=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)
case "$state" in
    "performance") echo "󰓅" ;;
    "powersave") echo "󰾆" ;;
    *) echo "?" ;;
esac
