#!/bin/bash
# Script 1: System Identity Report
# Author: Sarthak Tiwari | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Sarthak Tiwari"
SOFTWARE_CHOICE="MySQL"

# --- System info ---
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)

# --- Display ---
echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo " Software Chosen : $SOFTWARE_CHOICE"
echo "======================================"

echo "Linux Distribution : $DISTRO"
echo "Kernel Version     : $KERNEL"

echo "Logged-in User     : $USER_NAME"
echo "Home Directory     : $HOME_DIR"

echo "System Uptime      : $UPTIME"
echo "Current Date/Time  : $DATE_TIME"

echo "--------------------------------------"
echo "License Information:"
echo "MySQL Community Edition is released"
echo "under the GNU General Public License (GPL)."
echo "--------------------------------------"
