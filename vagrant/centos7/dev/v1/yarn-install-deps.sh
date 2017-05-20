#!/bin/bash

# This script executes "yarn install" on the current, active,
# project (which is assumed to be located at /project)

echo ""
echo "[Provision-Script] Installing Project Dependencies (w/Yarn)"
echo ""

cd /project
yarn install
