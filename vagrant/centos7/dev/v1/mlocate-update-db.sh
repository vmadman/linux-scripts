#!/bin/bash

# This script updates the local db for 'mlocate', which is a linux
# utility that is useful for finding files on the filesystem.

echo ""
echo "[Provision-Script] Updating mlocate database"
echo ""
updatedb
