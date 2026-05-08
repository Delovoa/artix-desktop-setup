#!/usr/bin/env bash

set -e
eval "$(micromamba shell hook --shell bash)"
micromamba activate jupyter
trap 'micromamba deactivate' EXIT
jupyter lab --ip=0.0.0.0 --no-browser
