#!/usr/bin/env bash

# This script sets 'nano' as the default editor..

# Say Hello
echo " "
echo "[Provision-Script] Setting 'nano' as default editor.."
echo " "

NANO_PATH=$(/usr/bin/which nano)

set_nano_as_editor() {

    TARGET_BASH_RC="$1"
    echo "" >> "$TARGET_BASH_RC"
    echo "# Set 'nano' as default editor" >> "$TARGET_BASH_RC"
    echo "export EDITOR=$NANO_PATH" >> "$TARGET_BASH_RC"

    echo "          at: $TARGET_BASH_RC"
    #cat "$TARGET_BASH_RC"

}

set_nano_as_editor "/root/.bashrc"
set_nano_as_editor "/home/vagrant/.bashrc"

# Set it now
export EDITOR="$NANO_PATH"
