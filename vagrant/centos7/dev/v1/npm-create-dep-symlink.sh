#!/bin/bash

# This script creates a symbolic link for the node_modules
# directory of the current, active, project (which is assumed
# to be located at /project).  This script is used to overcome
# a Vagrant/Virtualbox issue with long paths on windows.

echo ""
echo "[Provision-Script] Creating Symlink for node_modules"
echo ""

rm -rf /project/node_modules
rm -rf /home/vagrant/node_modules/project
mkdir -p /home/vagrant/node_modules/project
ln -s /home/vagrant/node_modules/project /project/node_modules
