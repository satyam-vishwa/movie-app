#!/bin/sh

# Navigate to the deployment directory
cd /home/ec2-user/dist

# Start the React app using serve
echo "Starting the application using 'serve'..."
serve -s build -l 3000 &

# Save the process ID to a file for later use
echo $! > /home/ec2-user/serve.pid
