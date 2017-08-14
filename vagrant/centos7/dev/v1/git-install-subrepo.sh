#!/bin/bash

# This script uses 'git' to clone the repository for
# git-subrepo, a git plugin that assists with the management
# of nested git repositories. You'll need to install git
# before running this script (i.e. "yum-install-git")
# - see: https://github.com/ingydotnet/git-subrepo

echo ""
echo "[Provision-Script] Installing git-subrepo (via git clone)"
echo ""

# Download the latest sources..
git clone https://github.com/ingydotnet/git-subrepo /usr/local/git-subrepo

# Add Git SubRepo to the 'vagrant' user..
echo "" >> /home/vagrant/.bashrc
echo "# Include Git SubRepo" >> /home/vagrant/.bashrc
echo "# see: https://github.com/ingydotnet/git-subrepo" >> /home/vagrant/.bashrc
echo "source /usr/local/git-subrepo/.rc" >> /home/vagrant/.bashrc
echo "" >> /home/vagrant/.bashrc

# Add Git SubRepo to the 'root' user..
echo "" >> /root/.bashrc
echo "# Include Git SubRepo" >> /root/.bashrc
echo "# see: https://github.com/ingydotnet/git-subrepo" >> /root/.bashrc
echo "source /usr/local/git-subrepo/.rc" >> /root/.bashrc
echo "" >> /root/.bashrc
