#!/usr/bin/env bash
set -euo pipefail

echo "To add a new AI model / environment, run these commands:"
echo ""
echo "micromamba activate jupyter"
echo "jupyter kernelspec remove [MODEL-NAME]"
echo "micromamba deactivate"
echo "micromamba env remove -n [MODEL-NAME]"
echo "micromamba clean --all"