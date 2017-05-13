#!/bin/bash

# This script installs Yarn (A package manager that replaces NPM and, perhaps, Bower)
# More info here: https://yarnpkg.com/en/

echo ""
echo "[Provision-Script] Installing Yarn"
echo ""

wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum install yarn -y
