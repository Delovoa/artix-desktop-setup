#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Install GE-Proton
# -----------------------------
yay -S proton-ge-custom-bin

# -----------------------------
# 2. Install GameMode & GameScope
# -----------------------------
sudo pacman -S gamemode lib32-gamemode gamescope
sudo groupadd -r gamemode
sudo usermod -aG video,audio,input,gamemode $USER

# -----------------------------
# 3. Install Steam
# -----------------------------
sudo pacman -S steam steam-devices
