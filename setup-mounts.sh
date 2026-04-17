#!/bin/bash


# Create directories if it does not exists.
if [ ! -f ./server-data ]; then
  mkdir ./server-data
fi

if [ ! -f ./server-files ]; then
  mkdir ./server-files
fi

# Set proper ownership.
chown 1000:1000 ./server-data
chown 1000:1000 ./server-files