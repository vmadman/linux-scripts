#!/bin/bash

# This script installs Asciinema (https://asciinema.org/docs/installation)
# requires: yum-install-python3.sh

echo ""
echo "[Provision-Script] Installing Asciinema"
echo ""
pip3 install asciinema


# Find install location
ASCIINEMA_MAIN=`which asciinema`


# Set up some basic vars
ASCIINEMA_ALIAS_DIR="/usr/bin"
ASCIINEMA_ALIAS_MAIN="$ASCIINEMA_ALIAS_DIR/acn"
ASCIINEMA_ALIAS_AUTH="$ASCIINEMA_ALIAS_DIR/acna"
ASCIINEMA_ALIAS_REC="$ASCIINEMA_ALIAS_DIR/acnr"



# Clean up previous executions
echo "    - Remove existing symlinks ..."
echo ""
rm -rf /usr/bin/acn
rm -rf /usr/bin/acna
rm -rf /usr/bin/acnr



# Create acn symlink
echo "    - Creating 'acn' symlink ..."
echo ""
ln -s "$ASCIINEMA_MAIN" "$ASCIINEMA_ALIAS_MAIN"

# We'll grab the version as a test of the symlink
ASCIINEMA_VERSION=`acn --version`



# Common variables for alias scripts
ALIAS_SCRIPT_L1='#!/bin/bash'
ALIAS_SCRIPT_L2=''



# Create acna alias for "asciinema auth"
echo "    - Creating 'acna' convenience script ..."
echo ""

echo "$ALIAS_SCRIPT_L1" > "$ASCIINEMA_ALIAS_AUTH"
echo "$ALIAS_SCRIPT_L2" >> "$ASCIINEMA_ALIAS_AUTH"
echo "$ASCIINEMA_MAIN auth" >> "$ASCIINEMA_ALIAS_AUTH"

chmod 0777 "$ASCIINEMA_ALIAS_AUTH"



# Create acna alias for "asciinema auth"
echo "    - Creating 'acnr' convenience script ..."
echo ""

echo "$ALIAS_SCRIPT_L1" > "$ASCIINEMA_ALIAS_REC"
echo "$ALIAS_SCRIPT_L2" >> "$ASCIINEMA_ALIAS_REC"
echo "$ASCIINEMA_MAIN rec" >> "$ASCIINEMA_ALIAS_REC"

chmod 0777 "$ASCIINEMA_ALIAS_REC"



# Tell the user ..
echo ""
echo ""
echo "  -- Asciinema has been installed -- "
echo ""
echo "              Version : $ASCIINEMA_VERSION"
echo "           Usage Docs : https://asciinema.org/docs/getting-started"
echo "      Main Entrypoint : $ASCIINEMA_MAIN"
echo ""
echo "         Main Symlink : $ASCIINEMA_ALIAS_MAIN"
echo "         Auth Symlink : $ASCIINEMA_ALIAS_AUTH"
echo "       Record Symlink : $ASCIINEMA_ALIAS_REC"
echo ""
