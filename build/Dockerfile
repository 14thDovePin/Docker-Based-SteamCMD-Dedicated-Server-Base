# syntax=docker/dockerfile:1

FROM cm2network/steamcmd:steam-bookworm

# Environment Variables
ENV sample_text="Hello World!"

# Document Ports

# Sample Port
EXPOSE 25565

COPY container-script.sh /container-script.sh
COPY entrypoint.sh /entrypoint.sh

WORKDIR /home/steam/server-files

USER root

RUN /bin/bash /container-script.sh
RUN chown steam:steam /entrypoint.sh
RUN rm /container-script.sh
RUN rm -rf /var/lib/apt/lists/*

# Set final user here.
USER steam

ENTRYPOINT [ "/entrypoint.sh" ]