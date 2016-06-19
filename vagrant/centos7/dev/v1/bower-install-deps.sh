#!/bin/bash

# This script executes "bower install" on the current, active,
# project (which is assumed to be located at /project)

echo ""
echo "[Provision-Script] Installing Bower Dependencies"
echo ""

cd /project
bower install --allow-root
