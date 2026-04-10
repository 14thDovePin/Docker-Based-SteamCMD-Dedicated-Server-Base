# syntax=docker/dockerfile:1

FROM cm2network/steamcmd:steam-bookworm

# Set to "Master" or "Caves"
ENV shard=""

# DST Master Port
EXPOSE 10888

# DST Server Ports
EXPOSE 10998-10999

# Steam Master Server Ports
EXPOSE 27017-27018

# Steam Authentication Ports
EXPOSE 8767-8768

COPY container-script.sh /container-script.sh
COPY entrypoint.sh /entrypoint.sh

WORKDIR /home/steam/server-files

USER root

RUN /bin/bash /container-script.sh
RUN chown steam:steam /entrypoint.sh
RUN rm /container-script.sh
RUN rm -rf /var/lib/apt/lists/*

USER steam

ENTRYPOINT [ "/entrypoint.sh" ]