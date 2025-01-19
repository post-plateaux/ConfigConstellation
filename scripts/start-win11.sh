#!/bin/bash

# Get the highest workspace number currently in use
current_max=$(hyprctl workspaces | grep ID | awk '{print $3}' | sort -n | tail -n1)

# Use the next number, or 1 if no workspaces exist
next_workspace=$((current_max + 1))

# Start VM first
nohup virsh start win11 > /dev/null 2>&1 &
sleep 2

# Start viewer and wait for window to appear
nohup virt-viewer --full-screen win11 > /dev/null 2>&1 &
sleep 1

# Get the virt-viewer window and move it
window_id=$(hyprctl clients | grep "virt-viewer" -B 2 | grep "Window" | awk '{print $2}')
hyprctl dispatch movetoworkspace "$next_workspace,address:$window_id"

# Finally switch to the workspace
hyprctl dispatch workspace "$next_workspace"
