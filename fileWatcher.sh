#!/bin/bash

# Check if a file path is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <file-to-watch>"
    exit 1
fi

# Get the file path
FILE_TO_WATCH="$1"

# Check if the file exists
if [ ! -f "$FILE_TO_WATCH" ]; then
    echo "File '$FILE_TO_WATCH' does not exist."
    exit 1
fi

echo "Watching file: $FILE_TO_WATCH"
echo "Press Ctrl+C to stop."

# Use tail to watch the file
tail -f "$FILE_TO_WATCH"
