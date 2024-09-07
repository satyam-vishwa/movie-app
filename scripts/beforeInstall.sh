#!/bin/sh

# Stop any existing application running (if applicable)
echo "Stopping existing application..."
sudo systemctl stop my-web-app.service || true

# Clean up previous deployment artifacts
echo "Cleaning up old deployment files..."
rm -rf /home/ec2-user/dist
