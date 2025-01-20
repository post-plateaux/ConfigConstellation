#!/bin/bash

# Check if VM is running
if virsh domstate win11 2>/dev/null | grep -q "running"; then
    # VM is running, shut it down gracefully
    virsh shutdown win11
    notify-send "Windows VM" "Shutting down..."
else
    # Switch to workspace 99 first
    hyprctl dispatch workspace 99

    # Start VM
    virsh start win11 > /dev/null 2>&1

    # Wait for VM to start
    sleep 2

    # Start viewer
    exec virt-viewer --full-screen win11
fi
