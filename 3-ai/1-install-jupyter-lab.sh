#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Install Micromamba
# -----------------------------
echo "==> Installing Micromamba..."
yay -S micromamba-bin
source ~/.bashrc

# -----------------------------
# 2. Enable Jupyter environment
# -----------------------------
echo "==> Creating Jupyter environment..."
micromamba create -n jupyter python=3.12 jupyterlab -c conda-forge

