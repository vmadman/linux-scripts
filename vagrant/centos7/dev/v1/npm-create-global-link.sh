#!/bin/bash

# This script creates a global link for the active project,
# which is assumed to be located in /project

echo ""
echo "[Provision-Script] Creating Global NPM Link"
echo ""

cd /project
npm link
