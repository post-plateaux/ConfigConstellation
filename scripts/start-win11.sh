#!/bin/bash

# Start VM
nohup virsh start win11 > /dev/null 2>&1 &
sleep 2

# Start viewer in special workspace
nohup virt-viewer --full-screen win11 > /dev/null 2>&1 &

# Switch to special workspace
sleep 1
hyprctl dispatch workspace special
