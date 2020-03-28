#!/bin/bash

# This script updates the local SSL Ciphers.
# see: https://stackoverflow.com/questions/49128953/fatal-unable-to-access-https-github-com-gabelerner-canvg-git-peer-reports

echo ""
echo "[Provision-Script] Updating SSL Ciphers (via YUM)"
echo ""
yum update -y nss curl libcurl
