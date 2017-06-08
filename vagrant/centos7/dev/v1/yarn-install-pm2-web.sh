#!/bin/bash

# This script uses Yarn to install PM2-Web globally
# see: https://www.npmjs.com/package/pm2-web
# see: https://github.com/achingbrain/pm2-web

echo ""
echo "[Provision-Script] Installing PM2-Web (via Yarn)"
echo ""

yarn global add pm2-web
