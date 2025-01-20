#!/bin/bash

# Start the network
echo "Starting network..."
virsh net-start default || { echo "Failed to start network"; exit 1; }
echo "Waiting for network to initialize..."
sleep 2

# Verify network started
if ! virsh net-list --all | grep -q "default.*active"; then
    echo "Error: Network failed to start"
    exit 1
fi

# Check if VM is running
if virsh domstate win11 2>/dev/null | grep -q "running"; then
    # VM is running, shut it down gracefully
    virsh shutdown win11
else
    # Switch to workspace 99 first
    hyprctl dispatch workspace 99


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
