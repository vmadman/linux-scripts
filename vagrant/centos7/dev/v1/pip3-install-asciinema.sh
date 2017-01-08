#!/bin/bash

# This script installs Asciinema (https://asciinema.org/docs/installation)
# requires: yum-install-python3.sh

echo ""
echo "[Provision-Script] Installing Asciinema"

pip3 install asciinema

# Find install location
ASCIINEMA_MAIN=`which asciinema`

# Set up some basic vars
ASCIINEMA_ALIAS_DIR="/usr/bin"
ASCIINEMA_ALIAS_MAIN="$ASCIINEMA_ALIAS_DIR/acn"
ASCIINEMA_ALIAS_AUTH="$ASCIINEMA_ALIAS_DIR/acna"
ASCIINEMA_ALIAS_REC="$ASCIINEMA_ALIAS_DIR/acnr"

# Create acn symlink
echo ""
echo "    - Remove existing symlinks ..."
echo ""
rm -rf /usr/bin/acn


# Create acn symlink
echo ""
echo "    - Creating 'acn' symlink ..."
echo "        $ASCIINEMA_MAIN -> $ASCIINEMA_ALIAS_MAIN"
echo ""
ln -s "$ASCIINEMA_MAIN" "$ASCIINEMA_ALIAS_MAIN"

# We'll grab the version as a test of the symlink
ASCIINEMA_VERSION=`acn --version`


# [root@containership project]# echo '#!/bin/bash' > /usr/bin/acn
# [root@containership project]# cat /usr/bin/acn
# #!/bin/bash
# [root@containership project]# echo '' >> /usr/bin/acn
# [root@containership project]# echo 'hi' >> /usr/bin/acn
# [root@containership project]# cat /usr/bin/acn



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

