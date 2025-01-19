#!/bin/bash

# Create and switch to VM workspace
hyprctl dispatch workspace special:vm

# Start VM
nohup virsh start win11 > /dev/null 2>&1 &
sleep 2

# Start viewer
nohup virt-viewer win11 > /dev/null 2>&1 &
