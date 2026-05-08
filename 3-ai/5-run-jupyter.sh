#!/usr/bin/env bash
set -euo pipefail

eval "$(micromamba shell hook --shell bash)"
micromamba activate jupyter
jupyter lab
micromamba deactivate