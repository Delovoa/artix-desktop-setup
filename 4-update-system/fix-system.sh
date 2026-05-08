#!/usr/bin/env bash
set -euo pipefail

echo "You can roll back changes with Snapper if an update broke something."
echo ""

echo "Run this command to list all your snapshots:"
echo "    sudo snapper -c root list"
echo ""

echo "Then run this command to roll back to an older snapshot:"
echo "    sudo snapper -c root undochange <snapshot-number>"
