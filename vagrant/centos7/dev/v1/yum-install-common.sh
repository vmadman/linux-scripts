#!/bin/bash

# This script installs a number of common yum packages that I like to
# include on every CentOS Vagrant box; mostly for utility purposes.

echo ""
echo "[Provision-Script] Installing Common Utils & Libraries"
echo ""
yum install -y mlocate nano
