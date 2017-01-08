#!/bin/bash

# This script installs the latest stable version of Python 3.x

echo ""
echo "[Provision-Script] Installing Python 3.x"
echo ""

yum -y install python34 python34-pip
python3 --version

pip3 install --upgrade pip
pip3 --version
