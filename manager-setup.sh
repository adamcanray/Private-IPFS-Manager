#!/bin/bash

echo "[manager-setup] Setup Manager"

# Setup ipfs
bash ./ipfs-setup-manager.sh

# Keep the script running
tail -f /dev/null