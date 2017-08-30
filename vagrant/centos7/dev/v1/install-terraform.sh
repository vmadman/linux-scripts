#!/bin/bash

# This script installs Terraform (via a ZIP download from Terraform.io)
#    see: https://www.terraform.io/intro/getting-started/install.html

TERRAFORM_VERSION="0.10.2"
TERRAFORM_BASE_URL="https://releases.hashicorp.com/terraform/$TERRAFORM_VERSION"
TERRAFORM_ZIP_NAME="terraform_0.10.2_linux_amd64.zip?_ga=2.223865688.278059054.1504047112-1151940089.1504047112"
TERRAFORM_DOWNLOAD_URL="$TERRAFORM_BASE_URL/$TERRAFORM_ZIP_NAME"
TERRAFORM_INSTALL_PATH="/usr/local/terraform"
TERRAFORM_FINAL_BIN_PATH="$TERRAFORM_INSTALL_PATH/terraform-$TERRAFORM_VERSION"

echo ""
echo "[Provision-Script] Installing Terraform"
echo ""

# Create terraform home
mkdir -p "$TERRAFORM_INSTALL_PATH"

# .. and go there
cd "$TERRAFORM_INSTALL_PATH"

# Download
wget "$TERRAFORM_DOWNLOAD_URL"

# Rename the zip file
mv "$TERRAFORM_ZIP_NAME" "terraform.zip"

# Unzip the zip file
unzip "terraform.zip"

# Rename binary
mv "terraform" "terraform-$TERRAFORM_VERSION"

# Create symlink for 'terraform'
rm -f "/usr/sbin/terraform"
ln -s "$TERRAFORM_FINAL_BIN_PATH" "/usr/sbin/terraform"

# Create symlink for 'tf'
rm -f "/usr/sbin/tf"
ln -s "$TERRAFORM_FINAL_BIN_PATH" "/usr/sbin/tf"

# Finalize Permissions
chown root:root -R "$TERRAFORM_INSTALL_PATH"
chmod 0755 -R "$TERRAFORM_INSTALL_PATH"

echo ""
echo "[Provision-Script] Installing Terraform"
echo ""
echo "    > Installed $(tf --version)"
echo ""

