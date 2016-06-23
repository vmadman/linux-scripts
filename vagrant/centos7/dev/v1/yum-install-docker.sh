#!/bin/bash

# This script installs Docker

echo ""
echo "[Provision-Script] Installing Docker"
echo ""
yum -y install docker
systemctl enable docker.service
systemctl start docker.service
