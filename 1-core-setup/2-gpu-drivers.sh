#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Install Video Drivers
# -----------------------------

GPU_INFO=$(lspci | grep -E "VGA|3D|Display" || true)

# echo "Detected: $GPU_INFO"

# AMD GPU
if echo "$GPU_INFO" | grep -qi "amd\|advanced micro devices"; then
    sudo pacman -S --needed --noconfirm \
        mesa \
        vulkan-radeon \
        mesa-utils \
        vulkan-tools \
        amd-ucode

# NVIDIA GPU
elif echo "$GPU_INFO" | grep -qi "nvidia"; then
    sudo pacman -S --needed --noconfirm \
        nvidia-dkms \
        nvidia-utils \
        opencl-nvidia

# Intel GPU
elif echo "$GPU_INFO" | grep -qi "intel"; then
    sudo pacman -S --needed --noconfirm \
        mesa \
        vulkan-intel \
        xf86-video-intel

# Unknown/Generic GPU
else
    echo "Error: Could not detect GPU!"
    exit 1
fi

# -----------------------------
# 2. Done
# -----------------------------
echo "==> Driver setup complete."
echo "    Make sure to reboot before using your new system"