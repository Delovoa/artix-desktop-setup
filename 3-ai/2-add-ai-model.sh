#!/usr/bin/env bash
set -euo pipefail

echo "To add a new AI model / environment, run these commands:"
echo ""
echo "micromamba create -n [MODEL-NAME] python=3.10 ipykernel -c conda-forge"
echo "micromamba activate [MODEL-NAME]"
echo "pip install [REQUIRED-PACKAGE-LIST]"
echo "python -m ipykernel install --user --name [MODEL-NAME] --display-name \"[DESCRIPTIVE-NAME]\""
echo "micromamba deactivate"
