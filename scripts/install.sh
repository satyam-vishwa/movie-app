#!/bin/sh

# Navigate to the deployment directory
cd /home/ec2-user/dist

# Install Node.js and npm if they are not already installed
if ! command -v node &> /dev/null
then
    echo "Node.js not found, installing..."
    curl -sL https://rpm.nodesource.com/setup_18.x | sudo bash -
    sudo yum install -y nodejs
fi

# Install the global serve package
echo "Installing 'serve' globally..."
npm install -g serve


