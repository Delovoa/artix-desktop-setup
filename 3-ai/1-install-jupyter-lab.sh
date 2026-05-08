#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Install CUDA
# -----------------------------
echo "==> Installing CUDA..."
sudo pacman -S cuda
export CUDA_HOME=/opt/cuda
export PATH=$CUDA_HOME/bin:$PATH
export LD_LIBRARY_PATH=$CUDA_HOME/lib64:$LD_LIBRARY_PATH

# -----------------------------
# 2. Install Micromamba
# -----------------------------
echo "==> Installing Micromamba..."
yay -S micromamba-bin
source ~/.bashrc

# -----------------------------
# 3. Enable Jupyter environment
# -----------------------------
echo "==> Creating Jupyter environment..."
micromamba create -n jupyter python=3.12 jupyterlab -c conda-forge

# -----------------------------
# 4. Create Jupyter folder
# -----------------------------
cd ~/Documents/
mkdir Jupyter
cd ~/Documents/Jupyter
