#!/bin/bash

# This script installs the latest stable version of NodeJS 4.x

echo ""
echo "[Provision-Script] Adding Yum Repo for NodeSource"
echo ""
curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -

echo ""
echo "[Provision-Script] Installing Node.js"
echo ""
yum -y install nodejs gcc-c++ make
