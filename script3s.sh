#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sarthak Tiwari | Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================="
echo "   Directory Audit Report"
echo "================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"

    else
        echo "$DIR does not exist on this system"
    fi
done

echo "---------------------------------"
echo "MySQL/MariaDB Configuration Check"
echo "---------------------------------"

CONFIG_DIR="/etc/mysql"

if [ -d "$CONFIG_DIR" ]; then
    CONF_PERMS=$(ls -ld $CONFIG_DIR | awk '{print $1, $3, $4}')
    echo "Config Directory: $CONFIG_DIR"
    echo "Permissions: $CONF_PERMS"
else
    echo "MySQL configuration directory not found."
fi
