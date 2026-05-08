#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Install Micromamba
# -----------------------------
echo "==> Removing Qwen-TTS..."

micromamba activate jupyter
jupyter kernelspec remove qwen3-tts
micromamba deactivate
micromamba env remove -n qwen3-tts
micromamba clean --all
