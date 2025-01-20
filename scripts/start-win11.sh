#!/bin/bash

# Check if VM is running
if virsh domstate win11 2>/dev/null | grep -q "running"; then
    # VM is running, shut it down gracefully
    virsh shutdown win11
else
    # Switch to workspace 99 first
    hyprctl dispatch workspace 99

    # Ensure default network is running
    if ! virsh net-list --all | grep -q "default.*active"; then
        echo "Starting default network..."
        virsh net-start default
    fi

    # Start VM
    echo "Starting Windows VM..."
    virsh start win11 > /dev/null 2>&1

    # Wait for VM to start (increased wait time)
    for i in {1..30}; do
        if virsh domstate win11 2>/dev/null | grep -q "running"; then
            echo "VM is running, launching viewer..."
            sleep 2  # Additional small delay to ensure VM is fully ready
            exec virt-viewer --full-screen win11
            exit 0
        fi
        echo -n "."
        sleep 1
    done
    
    echo "Failed to start VM within 30 seconds"
    exit 1
fi
