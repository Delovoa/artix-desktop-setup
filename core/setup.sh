#!/usr/bin/env bash
set -euo pipefail

echo "==> Starting base system setup..."

# -----------------------------
# 1. System update
# -----------------------------
echo "==> Updating system..."
sudo pacman -Syu --noconfirm

# -----------------------------
# 2. Install yay
# -----------------------------
echo "==> Installing core packages..."

sudo pacman -Syu
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# -----------------------------
# 3. Install Zen Kernel
# -----------------------------
echo "==> Installing Zen Kernel..."

sudo pacman -S linux-zen linux-zen-headers
sudo grub-mkconfig -o /boot/grub/grub.cfg

# -----------------------------
# 4. Install Informant
# -----------------------------
echo "==> Installing Informant..."

yay -S informant
sudo usermod -aG informant $USER

# -----------------------------
# 5. Install Snapper
# -----------------------------
echo "==> Installing Snapper..."

sudo pacman -S snapper
sudo snapper -c root create-config /

# -----------------------------
# 6. Done
# -----------------------------
echo "==> Base system setup complete."
echo "    You can now install optional components (Brave Browser, Steam, etc.)"
echo "    Make sure to reboot before using your new system"
