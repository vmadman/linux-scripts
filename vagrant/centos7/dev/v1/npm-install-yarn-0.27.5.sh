#!/bin/bash

# This script uses NPM to install Yarn v0.27.5 globally
# (Yarn is a package manager that replaces NPM)
# More info here: https://yarnpkg.com/en/
#       and here: https://yarnpkg.com/en/docs/install#alternatives-tab

echo ""
echo "[Provision-Script] Installing Yarn@0.27.5 (via NPM)"
echo ""

npm install -g yarn@0.27.5
