#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Install Zen Kernel
# -----------------------------
echo "==> Installing Zen Kernel..."
sudo pacman -S linux-zen linux-zen-headers
sudo grub-mkconfig -o /boot/grub/grub.cfg

# -----------------------------
# 2. Enable lib32
# -----------------------------

FILE="/etc/pacman.conf"

sudo cp "$FILE" "${FILE}.bak"

if ! grep -q "^\[lib32\]" "$FILE"; then
    echo "==> [lib32] section missing, adding it..."
    echo -e "\n[lib32]\nInclude = /etc/pacman.d/mirrorlist" | sudo tee -a "$FILE" > /dev/null
else
    echo "==> [lib32] section exists, uncommenting lines..."
    sudo sed -i '/^\s*#\s*\[lib32\]/s/^\s*#\s*//' "$FILE"
    sudo sed -i '/^\s*#\s*Include\s*=\s*\/etc\/pacman\.d\/mirrorlist/s/^\s*#\s*//' "$FILE"
fi

# -----------------------------
# 3. Update lib32
# -----------------------------
sudo pacman -Syu

# -----------------------------
# 4. Install 32-bit Video Drivers
# -----------------------------

GPU_INFO=$(lspci | grep -E "VGA|3D|Display" || true)

# echo "Detected: $GPU_INFO"

# AMD GPU
if echo "$GPU_INFO" | grep -qi "amd\|advanced micro devices"; then
    sudo pacman -S --needed --noconfirm \
        lib32-mesa \
        lib32-vulkan-radeon

# NVIDIA GPU
elif echo "$GPU_INFO" | grep -qi "nvidia"; then
    sudo pacman -S --needed --noconfirm \
        lib32-nvidia-utils

# Intel GPU
elif echo "$GPU_INFO" | grep -qi "intel"; then
    sudo pacman -S --needed --noconfirm \
        lib32-mesa \
        lib32-vulkan-intel

# Unknown/Generic GPU
else
    echo "Error: Could not detect GPU!"
    exit 1
fi

# -----------------------------
# 5. Install GE-Proton
# -----------------------------
yay -S proton-ge-custom-bin

# -----------------------------
# 6. Install GameMode & GameScope
# -----------------------------
sudo pacman -S gamemode lib32-gamemode gamescope
sudo groupadd -r gamemode
sudo usermod -aG video,audio,input,gamemode $USER

# -----------------------------
# 7. Install Steam
# -----------------------------
sudo pacman -S steam steam-devices

# -----------------------------
# 8. Install Heroic Games Launcher
# -----------------------------
yay -S heroic-games-launcher-bin