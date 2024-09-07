#!/bin/sh

# Check if the application is running
echo "Validating the service..."
curl -I http://localhost:3000

if [ $? -eq 0 ]; then
  echo "Application is running successfully."
  exit 0
else
  echo "Application failed to start."
  exit 1
fi
