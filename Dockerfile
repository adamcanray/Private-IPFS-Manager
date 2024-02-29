FROM alpine:latest

RUN echo "Dockerfile for Swarm Manager"

# Install packages
RUN echo "Install Packages"
RUN apk --no-cache add openrc git bash nano jq go go-ipfs

# Copy necessary files
COPY swarm.key /swarm.key

# Copy scripts from the current directory to the root directory of the image
COPY manager-setup.sh /manager-setup.sh
COPY ipfs-setup-manager.sh /ipfs-setup-manager.sh

# Set execute permissions for the script
RUN chmod +x /manager-setup.sh
RUN chmod +x /ipfs-setup-manager.sh

# Define the entry point to be the manager-setup.sh script
ENTRYPOINT ["/manager-setup.sh"]
