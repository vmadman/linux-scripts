#!/bin/bash

# This script installs NVM ("Node Version Manager") and
# then the latest stable version of NodeJS 6.x.

echo ""
echo "[Provision-Script] Installing Node.js Prerequisites"
echo ""
yum -y install gcc-c++ make

echo ""
echo "[Provision-Script] Installing NVM"
echo ""
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

echo ""
echo "[Provision-Script] Installing Node.js 6.x"
echo ""
echo "<todo>"
echo ""
