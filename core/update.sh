#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Check Arch News
# -----------------------------
if ! informant check; then
    echo "!! Unread Arch News detected. Read before continuing."
    exit 1
fi

# -----------------------------
# 2. Create backup snapshot
# -----------------------------
sudo snapper -c root create -d "backup-$(date +%F-%H%M)"

# -----------------------------
# 3. Refresh mirrors
# -----------------------------
sudo pacman -Syy

# -----------------------------
# 4. Update keyrings
# -----------------------------
sudo pacman -Sy --needed archlinux-keyring artix-keyring

# -----------------------------
# 5. Perform upgrade
# -----------------------------
yay -Syu

# -----------------------------
# 6. List out snapshots
# -----------------------------
sudo snapper -c root list

read -p "Press Enter to continue..."
