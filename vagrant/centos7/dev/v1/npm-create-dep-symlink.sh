#!/bin/bash

# This script creates a symbolic link for the node_modules
# directory of the current, active, project (which is assumed
# to be located at /project).  This script is used to overcome
# a Vagrant/Virtualbox issue with long paths on windows.

NMSL_PROJECT_DIR="/project"
NMSL_PROJECT_NM="$NMSL_PROJECT_DIR/node_modules"
NMSL_STORE_PATH="/home/vagrant/node_modules"

echo ""
echo "[Provision-Script] Creating Symlink for node_modules"
echo ""

echo "   > Removing existing symlink (if it exists)"

rm -rf "$NMSL_PROJECT_NM"

echo "   > Removing existing node_modules store (if it exists)"

rm -rf "$NMSL_STORE_PATH"

echo "   > Creating new node_modules store"

mkdir -p "$NMSL_STORE_PATH"

echo "   > Creating new symlink"

ln -s "$NMSL_STORE_PATH" "$NMSL_PROJECT_NM"

echo "   > Applying permissions to node_modules store"

chown vagrant:vagrant "$NMSL_STORE_PATH" -R

echo ""
