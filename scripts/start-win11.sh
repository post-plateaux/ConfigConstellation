#!/bin/bash
hyprctl dispatch workspace 5
nohup virsh start win11 > /dev/null 2>&1 &
sleep 2
nohup virt-viewer --full-screen win11 > /dev/null 2>&1 &
