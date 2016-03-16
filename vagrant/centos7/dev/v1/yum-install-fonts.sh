#!/bin/bash

# This script uses YUM to install the font packages used by PhantomJS

echo ""
echo "[Provision-Script] Installing Font Packages"
echo ""

yum install urw-fonts -y
