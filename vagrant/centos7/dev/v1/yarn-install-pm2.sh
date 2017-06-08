#!/bin/bash

# This script uses Yarn to install PM2 (a process manager) globally
# see: http://pm2.keymetrics.io/
# see: https://github.com/Unitech/PM2/

echo ""
echo "[Provision-Script] Installing PM2 (via Yarn)"
echo ""

yarn global add pm2
pm2 startup centos
