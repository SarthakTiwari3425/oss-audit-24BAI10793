#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sarthak Tiwari | Course: Open Source Software

echo "======================================"
echo " Open Source Manifesto Generator"
echo "======================================"
echo "Answer three questions to generate your manifesto."
echo ""

# User input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_$USER.txt"

# Example of alias concept (comment only)
# alias ll='ls -la'   # This creates a shortcut command in Linux

# Write manifesto to file
echo "Open Source Manifesto" > $OUTPUT
echo "Written by: $USER on $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe open source empowers people through collaboration and transparency." >> $OUTPUT
echo "Every day I rely on tools like $TOOL, which demonstrate how communities can build powerful software together." >> $OUTPUT
echo "To me, freedom means $FREEDOM — the ability to learn, modify, and share knowledge openly." >> $OUTPUT
echo "In the spirit of open source, I would love to build $BUILD and share it with the world so that others can learn from it and improve upon it." >> $OUTPUT
echo "Open source is not just software, it is a philosophy of innovation, trust, and shared progress." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
echo "Generated Manifesto:"
echo "--------------------------------------"

cat $OUTPUT
