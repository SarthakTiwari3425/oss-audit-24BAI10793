#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sarthak Tiwari | Course: Open Source Software

PACKAGE="mysql-server"

echo "===================================="
echo "   FOSS Package Inspector"
echo "===================================="

# Check if package is installed
if dpkg -l | grep -w $PACKAGE > /dev/null; then
    echo "$PACKAGE is installed."
    
    echo "Package Details:"
    dpkg -l | grep -w $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

echo "------------------------------------"
echo "Package Philosophy:"
echo "------------------------------------"

# Case statement
case $PACKAGE in
    mysql-server)
        echo "MySQL: Open-source database powering millions of web applications."
        ;;
    apache2)
        echo "Apache: the web server that built the open internet."
        ;;
    vlc)
        echo "VLC: a free multimedia player supporting almost every media format."
        ;;
    firefox)
        echo "Firefox: privacy-focused open-source web browser."
        ;;
    *)
        echo "Unknown package. Open source software encourages freedom and collaboration."
        ;;
esac
