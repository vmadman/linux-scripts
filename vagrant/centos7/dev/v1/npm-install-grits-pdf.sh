#!/bin/bash

# This script uses NPM to install the PDF plugin for Grits, globally

echo ""
echo "[Provision-Script] Installing Grits-PDF"
echo ""

npm install -g git+https://github.com/Dasix/grits-plugin-pdf.git
