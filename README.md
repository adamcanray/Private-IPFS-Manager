# IPFS Manager Node

This [branch](https://github.com/ParallaxNetwork/private-ipfs-manager/tree/without-config) is not using scripts that automate setup for the ipfs config (including bootstrapping), so you should setup the config manually, and put it in the right place.

## Run

1. Build the image

   ```bash
   docker build . -t ipfs_manager --no-cache
   ```

   if we want to build the image for specific platform (ex: `--platform linux/arm64/v8`).

2. Run the container

   ```bash
   docker run --name <name> -d ipfs_manager
   ```

   if we want to expose the port, we can add for example `-p 4001:4001 -p 5001:5001 -p 8080:8080` to the command, but on ipfs config we are not exposed the API server (`:5001`) to the public.

## Addition

### About project

This project is running well with alphine linux with arm base (`linux/arm64/v8`), if you run this project using different distribution, maybe you should adjust some scripts or service config (ex: `services/ipfs`, etc).

## Notes

- In [previous](https://github.com/adamcanray/Private-IPFS-Cluster-Data-Replication), manager and worker project is in one code base, we run with docker compose to simplify the automation, since currently the worker project is not on one code base anymore, we should run it in some steps (ex: running worker node manually, then run worker nodes and pointing it to the worker manually), see [Run](/#Run) section above.
- The `swarm.key`is should be confidential, we should generate new key for production.
