#!/bin/bash

# Function to traverse directories
walk_dir() {
    local directory="$1"
    local prefix="$2"

    # List all files and directories, excluding '.' and '..'
    # Use a loop to handle spaces in filenames
    local entries=("$directory"/*)
    
    # Check if directory is empty
    if [ ! -e "${entries[0]}" ]; then
        return
    fi

    local count=${#entries[@]}
    local i=0

    for entry in "${entries[@]}"; do
        i=$((i + 1))
        local name=$(basename "$entry")
        
        # Determine if this is the last item in the current folder
        if [ $i -eq $count ]; then
            echo "${prefix}└── $name"
            # If it's a directory, recurse with a blank prefix
            [ -d "$entry" ] && walk_dir "$entry" "${prefix}    "
        else
            echo "${prefix}├── $name"
            # If it's a directory, recurse with a vertical bar prefix
            [ -d "$entry" ] && walk_dir "$entry" "${prefix}│   "
        fi
    done
}

# Start the script
target_dir="${1:-.}" # Default to current directory if no argument is provided

echo "$target_dir"
walk_dir "$target_dir" ""