#!/bin/bash

# This script installs the latest stable version of Python 2.x

echo ""
echo "[Provision-Script] Installing Python 2.x"
echo ""
yum -y install python2
python --version
