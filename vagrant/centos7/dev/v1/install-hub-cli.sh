#!/usr/bin/env bash

# Installs the GitHub CLI utility ("hub") from a precompiled binary.
#     see: https://hub.github.com/
#     see: https://github.com/github/hub/releases


HUB_VERSION="2.3.0-pre10"
HUB_LONG_NAME="hub-linux-amd64-$HUB_VERSION"
HUB_ARCHIVE_NAME="$HUB_LONG_NAME.tgz"
HUB_DOWNLOAD_URL="https://github.com/github/hub/releases/download/v$HUB_VERSION/$HUB_ARCHIVE_NAME"
HUB_DOWNLOAD_DIR="/home/vagrant"
HUB_INSTALL_TO="/usr/local/hub"

echo ""
echo "[Provision-Script] Installing Hub CLI v$HUB_VERSION from a precompiled binary ..."
echo ""

# Goto download root
cd "$HUB_DOWNLOAD_DIR"

# Remove existing temp dirs
rm -rf ./hub

# Create temp dir
mkdir -p hub

# Enter tmp dir
cd hub

# Download Hub
wget "$HUB_DOWNLOAD_URL"

# Extract it
tar -xvzf "$HUB_ARCHIVE_NAME"

# Remove the archive
rm -f *.tgz

# Move the directory
mv "$HUB_DOWNLOAD_DIR/hub/$HUB_LONG_NAME" "$HUB_INSTALL_TO"
cd "$HUB_INSTALL_TO"

# Run hub installer
./install

# Create symlink
rm -f "/usr/sbin/hub"
ln -s "$HUB_INSTALL_TO/bin/hub" "/usr/sbin/hub"

# Create Alias
alias git=hub

# Cleanup
rm -rf "$HUB_DOWNLOAD_DIR/hub"

