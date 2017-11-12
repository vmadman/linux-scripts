#!/bin/bash

# This script installs the latest stable version of NodeJS 4.x

echo ""
echo "[Provision-Script] Node.js: Installing http-parser (temp workaround)"
echo ""
rpm -ivh https://kojipkgs.fedoraproject.org//packages/http-parser/2.7.1/3.el7/x86_64/http-parser-2.7.1-3.el7.x86_64.rpm

echo ""
echo "[Provision-Script] Node.js: Adding Yum Repo for NodeSource"
echo ""
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum makecache fast

echo ""
echo "[Provision-Script] Node.js: Installing Node.js"
echo ""
yum -y install nodejs gcc-c++ make
