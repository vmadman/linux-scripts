#!/bin/bash

# This script removes any existing "node_modules" and then 
# executes "npm install" on the current, active, project 
# (which is assumed to be located at /project)

echo ""
echo "[Provision-Script] Removing existing 'node_modules' ..."
echo ""

cd /project
rm -rf ./node_modules

echo ""
echo "[Provision-Script] Installing Project Dependencies (w/NPM)"
echo ""

npm install
