#!/bin/bash

# This script installs NVM ("Node Version Manager") and
# then the latest stable version of NodeJS 6.x.
# - see: https://github.com/creationix/nvm#install-script

echo ""
echo "[Provision-Script] Installing Node.js Prerequisites"
echo ""
yum -y install gcc-c++ make

echo ""
echo "[Provision-Script] Installing NVM"
echo ""
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

# Make NVM available, immediately, so that this script can use it
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo ""
echo "[Provision-Script] Installing Node.js 6.x"
echo ""
nvm install 6 --lts
nvm use 6
