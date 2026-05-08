#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Install OpenSSH
# -----------------------------
sudo pacman -S openssh

# -----------------------------
# 2. Enable OpenSSH
# -----------------------------
sudo rc-update add sshd default
sudo rc-service sshd start