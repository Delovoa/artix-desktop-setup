#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Install Micromamba
# -----------------------------
echo "==> Installing Qwen-TTS..."

micromamba create -n qwen3-tts python=3.12 ipykernel -y
micromamba activate qwen3-tts

pip install -U qwen-tts
pip install -U flash-attn --no-build-isolation

python -m ipykernel install --user --name qwen-tts --display-name "QWEN-TTS"
micromamba deactivate
