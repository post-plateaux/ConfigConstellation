#!/bin/bash

# Check if VM is already running
if virsh domstate win11 2>/dev/null | grep -q "running"; then
    echo "VM already running, switching to workspace 99"
    exec hyprctl dispatch workspace 99
fi

# Ensure network is active
if ! virsh net-list --all | grep -q "default.*active"; then
    echo "Starting network..."
    virsh net-start default || { echo "Failed to start network"; exit 1; }
    echo "Waiting for network to initialize..."
    sleep 2
fi

# Switch to workspace 99
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
