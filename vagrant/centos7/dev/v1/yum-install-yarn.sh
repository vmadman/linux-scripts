#!/bin/bash

# This script installs Yarn (A package manager that replaces NPM and, perhaps, Bower)
# More info here: https://yarnpkg.com/en/

echo ""
echo "[Provision-Script] Installing Yarn"
echo ""

wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum install yarn -y

# --

echo " "
echo "[Provision-Script] Adding Yarn Binaries to PATH.."
echo " "

YARN_BINARY_PATH="/usr/local/bin"

add_yarn_root_path() {

    TARGET_BASH_RC="$1"
    echo "" >> "$TARGET_BASH_RC"
    echo "# Add the Yarn binary root path to PATH" >> "$TARGET_BASH_RC"
    echo "export PATH="'"$PATH:'"$YARN_BINARY_PATH"'"' >> "$TARGET_BASH_RC"

    echo "          at: $TARGET_BASH_RC"

}

add_yarn_root_path "/root/.bashrc"
add_yarn_root_path "/home/vagrant/.bashrc"
