#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Install Micromamba
# -----------------------------
echo "==> Installing Qwen-TTS..."

eval "$(micromamba shell hook --shell bash)"
micromamba create -n qwen3-tts python=3.12 ipykernel -y
micromamba activate qwen3-tts

pip install -U qwen-tts soundfile ipywidgets

python -m ipykernel install --user --name qwen3-tts --display-name "QWEN3-TTS"
micromamba deactivate

source ~/.bashrc