#!/bin/bash

# More details at the following link...
# https://dontstarve.fandom.com/wiki/Guides/Don%E2%80%99t_Starve_Together_Dedicated_Servers

# Optional
dpkg --add-architecture i386
apt-get update
apt-get install -y lib32gcc1

# Setup
apt-get install -y lib32stdc++6 # If running a 64bit OS
apt-get install -y libcurl4-gnutls-dev:i386