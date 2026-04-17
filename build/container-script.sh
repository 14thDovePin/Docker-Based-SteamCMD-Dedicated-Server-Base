#!/bin/bash

# Add container setup bash code here...

# SteamCMD configuration file.
cat > /home/steam/steamcmd-config.txt <<'EOL'
force_install_dir /home/steam/server-files
login anonymous
app_update ###### validate
quit
EOL