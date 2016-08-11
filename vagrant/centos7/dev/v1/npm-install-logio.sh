#!/bin/bash

# This script uses NPM to install Log.io globally

echo ""
echo "[Provision-Script] Installing Log.io"
echo ""

#mkdir /root/.log.io
#chmod 0777 /root/.log.io
#npm install -g log.io --user "vagrant"

cd ~
npm install log.io --unsafe-perm
