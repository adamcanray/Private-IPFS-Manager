#!/bin/bash

# Enable debugging output
set -x

# IPFS init
echo "[ipfs-setup] Setup IPFS"
ipfs init
echo "[ipfs-setup] IPFS initialized with id: ${ipfs id}"

# IPFS swarm key
echo "[ipfs-setup] Swarm key is ready"
cat ./swarm.key > ~/.ipfs/swarm.key
echo "[ipfs-setup] Swarm key is copied to ~/.ipfs/swarm.key"
cd /

# Disable debugging output
set +x
