#!/bin/bash

# This script uses Yarn to install PM2-GUI globally
# see: https://www.npmjs.com/package/pm2-gui
# see: https://github.com/Tjatse/pm2-gui

echo ""
echo "[Provision-Script] Installing PM2-GUI (via Yarn)"
echo ""

yarn global add pm2-gui
