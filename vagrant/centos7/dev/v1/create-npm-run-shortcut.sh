#!/bin/bash

# This script will create a simple script named 'rn' in the system path that 
# executes `npm run` from with `/project`

SYSTEM_BIN_PATH="/usr/sbin"
SHORTCUT_NAME="rn"
SHORTCUT_PATH="$SYSTEM_BIN_PATH/$SHORTCUT_NAME"
SHORTCUT_BACKUP_PATH="$SYSTEM_BIN_PATH/$SHORTCUT_NAME.backup"

# Log it..
echo " "
echo "      > Creating 'rn' shortcut in system path ..."
echo " "
echo "           $ Script Path : $SHORTCUT_PATH"
echo " "

# Check to see if the symlink already exists..
if [ -f "$SHORTCUT_PATH" ]; then

    # If the symlink exists, then we'll create a backup
    # of whatever is there, just in case.

    echo "           - Existing script found, checking for a backup ..."
    echo " "

    if [ -f "$SHORTCUT_BACKUP_PATH" ]; then

        echo "           - Backup found, will remove the script ..."
        echo " "

        # .. unless there is already a backup,
        # then we can just remove it.
        rm -f "$SHORTCUT_PATH"

    else

        echo "           - Backup not found, creating one ..."
        echo " "

        # Create a backup..
        mv "$SHORTCUT_PATH" "$SHORTCUT_BACKUP_PATH"

    fi

fi

echo "           - Writing the script ..."
echo " "

# -
echo "#!/usr/bin/env bash" > "$SHORTCUT_PATH"
echo "" >> "$SHORTCUT_PATH"
echo "# This shortcut script can only be used to run" >> "$SHORTCUT_PATH"
echo "# project scripts rooted in /project; so we'll change" >> "$SHORTCUT_PATH"
echo "# to that directory." >> "$SHORTCUT_PATH"
echo "cd /project" >> "$SHORTCUT_PATH"
echo "" >> "$SHORTCUT_PATH"
echo "# Capture the arguments" >> "$SHORTCUT_PATH"
echo "allExecArguments=()" >> "$SHORTCUT_PATH"
echo "for oneExecArgument; do allExecArguments+=("'"$oneExecArgument"'"); done" >> "$SHORTCUT_PATH"
echo "" >> "$SHORTCUT_PATH"
echo "# Padding" >> "$SHORTCUT_PATH"
echo "echo ' '" >> "$SHORTCUT_PATH"
echo "echo ' '" >> "$SHORTCUT_PATH"
echo "" >> "$SHORTCUT_PATH"
echo "# Defer to npm run-script (aka run)" >> "$SHORTCUT_PATH"
echo '"npm" "run-script" "-s" "${allExecArguments[@]}"' >> "$SHORTCUT_PATH"
echo "" >> "$SHORTCUT_PATH"
echo "# Padding" >> "$SHORTCUT_PATH"
echo "echo ' '" >> "$SHORTCUT_PATH"
echo "echo ' '" >> "$SHORTCUT_PATH"
# -


echo "           - Setting permissions ..."
echo " "
chmod +x "$SHORTCUT_PATH"

# End Padding
echo " "
