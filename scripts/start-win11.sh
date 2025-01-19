#!/bin/bash

# Get the highest workspace number currently in use
current_max=$(hyprctl workspaces | grep ID | awk '{print $3}' | sort -n | tail -n1)

# Use the next number, or 1 if no workspaces exist
next_workspace=$((current_max + 1))

# Switch to the new workspace
hyprctl dispatch workspace $next_workspace

# Small delay to ensure workspace switch completes
sleep 0.5

# Start VM and viewer in the new workspace
nohup virsh start win11 > /dev/null 2>&1 &
sleep 2
nohup virt-viewer --full-screen win11 > /dev/null 2>&1 &
