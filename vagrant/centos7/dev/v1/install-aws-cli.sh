#!/bin/bash

# This script installs the latest stable version of the AWS CLI utility

echo ""
echo "[Provision-Script] Installing the AWS CLI utility"
echo ""

cd /root
rm -rf awscli-bundle
rm -f awscli-bundle.zip

curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
./awscli-bundle/install -i /usr/local/aws -b /usr/bin/aws
