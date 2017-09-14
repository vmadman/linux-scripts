#!/bin/bash

# This script uses Yarn to install my Yeoman generator
#   see: https://github.com/vmadman/generator-luke-common
#   see: http://yeoman.io/

echo ""
echo "[Provision-Script] Installing Luke's Yeoman Generator (via Yarn)"
echo ""

yarn global add "@lukechavers/generator-luke"
