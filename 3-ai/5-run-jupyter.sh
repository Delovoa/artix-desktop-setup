#!/usr/bin/env bash
set -euo pipefail

micromamba activate jupyter
jupyter lab
micromamba deactivate