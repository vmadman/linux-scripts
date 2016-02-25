#!/bin/bash

# This script executes "npm install" on the current, active,
# project (which is assumed to be located at /project)

echo ""
echo "[Provision-Script] Installing Project Dependencies"
echo ""

cd /project
npm install
