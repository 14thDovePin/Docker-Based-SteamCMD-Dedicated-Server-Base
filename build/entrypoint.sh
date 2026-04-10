#!/bin/bash

SERVER_FILE="/home/steam/server-files/bin/dontstarve_dedicated_server_nullrenderer"

# Download server files if needed.
if [[ ! -f $SERVER_FILE && ${shard} = "Master" ]]; then
  echo "Downloading server files..."

  bash /home/steam/steamcmd/steamcmd.sh \
  +force_install_dir /home/steam/server-files \
  +login anonymous \
  +app_update 343050 validate \
  +quit
fi

# Start the server.
cd /home/steam/server-files/bin
LD_LIBRARY_PATH=~/dst_lib $SERVER_FILE -console -shard ${shard}