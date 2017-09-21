#!/bin/bash

# This script uses Yarn to install "Browser Sync" globally
# (This is superior, drop-in, replacement for LiveReloadX)
#
#      see: https://www.browsersync.io/
#           https://www.browsersync.io/docs/command-line
#           https://www.browsersync.io/docs/options
#

echo ""
echo "[Provision-Script] Installing BrowserSync (Globally via Yarn)"
echo ""

yarn global add browser-sync
