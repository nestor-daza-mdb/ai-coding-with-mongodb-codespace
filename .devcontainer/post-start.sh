#!/bin/bash
set -e

if pgrep mongod >/dev/null; then
  exit 0
fi

mkdir -p /data/db /var/log/workshop
mongod --fork \
  --bind_ip 127.0.0.1 \
  --port 27017 \
  --dbpath /data/db \
  --logpath /var/log/workshop/mongod.log