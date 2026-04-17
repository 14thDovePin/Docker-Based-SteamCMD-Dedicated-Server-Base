#!/bin/bash

SERVER_EXECUTABLE="/home/steam/server-files/SERVER_FILE_EXECUTABLE_HERE"

# Download server files if needed.
if [ ! -f $SERVER_EXECUTABLE ]; then
  echo "Downloading server files..."
  bash /home/steam/steamcmd/steamcmd.sh +runscript /home/steam/steamcmd-config.txt
fi

# Start the server.
bash $SERVER_EXECUTABLE