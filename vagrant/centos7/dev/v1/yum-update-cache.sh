#!/bin/bash

# This script updates the local YUM cache in order to make
# yum searches faster.

echo ""
echo "[Provision-Script] Updating YUM Cache"
echo ""
yum makecache fast
