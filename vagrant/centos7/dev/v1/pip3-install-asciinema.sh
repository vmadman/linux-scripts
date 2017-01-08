#!/bin/bash

# This script installs Asciinema (https://asciinema.org/docs/installation)
# requires: yum-install-python3.sh

echo ""
echo "[Provision-Script] Installing Asciinema"
echo ""

pip3 install asciinema

# Create acn symlink
rm -rf /usr/bin/acn
ln -s /bin/asciinema /usr/bin/acn

# [root@containership project]# echo '#!/bin/bash' > /usr/bin/acn
# [root@containership project]# cat /usr/bin/acn
# #!/bin/bash
# [root@containership project]# echo '' >> /usr/bin/acn
# [root@containership project]# echo 'hi' >> /usr/bin/acn
# [root@containership project]# cat /usr/bin/acn



echo ""
echo "  -- Asciinema has been installed -- "
