#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Install Micromamba
# -----------------------------
echo "==> Installing Qwen-TTS..."

micromamba create -n qwen3-tts python=3.12 ipykernel -y
eval "$(micromamba shell hook --shell bash)"
micromamba activate qwen3-tts

pip install -U qwen-tts soundfile ipywidgets

python -m ipykernel install --user --name qwen-tts --display-name "QWEN-TTS"
micromamba deactivate

source ~/.bashrc