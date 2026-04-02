#!/bin/bash
# Script 4: Log File Analyzer
# Author: Sarthak Tiwari | Course: Open Source Software
# Usage: ./script4.sh logfile keyword

LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword = error
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Retry if file is empty (do-while style)
while [ ! -s "$LOGFILE" ]
do
    echo "Log file is empty. Waiting for data..."
    sleep 2
done

# Read file line by line
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"
    then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "--------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------------"

echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
