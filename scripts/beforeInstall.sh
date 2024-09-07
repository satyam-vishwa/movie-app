#!/bin/bash

# Check if the /home/ubuntu/dist directory exists
if [[ -d "/home/ubuntu/dist" ]]; then
    # If it exists, stop and delete the api service
    sudo pkill -9 node
    # Remove the dist directory
    cd /home/ubuntu && sudo rm -rf dist
else
    # If it doesn't exist, echo a message indicating it's a fresh EC2 instance
    echo "Fresh EC2 instance"
fi
