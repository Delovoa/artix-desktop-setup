#!/usr/bin/env bash
set -euo pipefail

# -----------------------------
# 1. Remove Qwen-TTS
# -----------------------------
echo "==> Removing Qwen-TTS..."

eval "$(micromamba shell hook --shell bash)"
micromamba activate jupyter
jupyter kernelspec remove qwen3-tts
micromamba deactivate
micromamba env remove -n qwen3-tts
micromamba clean --all
