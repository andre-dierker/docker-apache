#!/bin/bash

# Check if config exists. If not, copy in the sample config
if [ -f /config/proxy-config.conf ]; then
  echo "Using existing config file."
else
  echo "Creating config from template."
  mv /defaults/000-default.conf /config/proxy-config.conf
  chown abc:abc /config/proxy-config.conf
fi

# Check if logs folder exists. If not, create
if [ -d /config/logs ]; then
  echo "Folder directory."
else
  echo "Creating log directory."
  /sbin/setuser abc mkdir -p /config/logs
fi

# Check if www folder exists. If not, create
if [ -d /config/web ]; then
  echo "Folder directory."
else
  echo "Creating web directory."
  /sbin/setuser abc mkdir -p /config/web
fi
   
