#!/bin/bash

# Switch to workspace 99 first
hyprctl dispatch workspace 99

# Start VM
virsh start win11 > /dev/null 2>&1

# Wait for VM to start
sleep 2

# Start viewer
exec virt-viewer --full-screen win11
