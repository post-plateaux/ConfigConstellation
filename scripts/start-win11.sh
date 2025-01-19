#!/bin/bash

# Get current workspace count and add 1
NEXT_WS=$(($(hyprctl workspaces -j | jq '. | length') + 1))

# Start VM
virsh start win11 > /dev/null 2>&1

# Wait for VM to start
sleep 2

# Switch to new workspace first
hyprctl dispatch workspace $NEXT_WS

# Start viewer and force it to this workspace
virt-viewer win11 > /dev/null 2>&1 &
PID=$!

# Wait for window to appear and force it
sleep 1
WINDOW=$(hyprctl clients | grep "virt-viewer" -B 2 | grep "Window" | awk '{print $2}')
hyprctl dispatch movetoworkspacesilent "$NEXT_WS,address:$WINDOW"
