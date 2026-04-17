#!/bin/bash

SERVER_EXECUTABLE="/home/steam/server-files/SERVER_FILE_EXECUTABLE_HERE"
APP = 343050  # DST as Sample

# Download server files if needed.
if [ ! -f $SERVER_EXECUTABLE ]; then
  echo "Downloading server files..."

  bash /home/steam/steamcmd/steamcmd.sh \
  +force_install_dir /home/steam/server-files \
  +login anonymous \
  +app_update $APP validate \
  +quit
fi

# Start the server.
bash $SERVER_EXECUTABLE