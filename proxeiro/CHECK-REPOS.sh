#!/bin/bash

# Define the output file
OUTPUT_FILE="GFS-BUILDS.TXT"

# Clear the output file if it exists
> "$OUTPUT_FILE"

# Function to extract and append variables from a build script
process_build_script() {
    local build_script="$1"
    
    # Read the variables from the current build script without sourcing
    PRGNAM=$(awk -F= '/^PRGNAM=/{print $2}' "$build_script")
    VERSION=$(awk -F= '/^VERSION=/{print $2}' "$build_script")
    BUILD=$(awk -F= '/^BUILD=/{print $2}' "$build_script")
    TAG=$(awk -F= '/^TAG=/{print $2}' "$build_script")
    PKGTYPE=$(awk -F= '/^PKGTYPE=/{print $2}' "$build_script")

    # Append the variables to the output file
    echo "PRGNAM: $PRGNAM" >> "$OUTPUT_FILE"
    echo "VERSION: $VERSION" >> "$OUTPUT_FILE"
    echo "BUILD: $BUILD" >> "$OUTPUT_FILE"
    echo "TAG: $TAG" >> "$OUTPUT_FILE"
    echo "PKGTYPE: $PKGTYPE" >> "$OUTPUT_FILE"

    # Extract and append download URLs
    urls=$(awk '/wget\s+-c\s+http[s]?:\/\/[^\s]+/{print $NF}' "$build_script")
    if [ -n "$urls" ]; then
        echo "DOWNLOAD: $urls" >> "$OUTPUT_FILE"
    fi

    # Check if slack-required file exists
    if [ -e "${build_script%.SlackBuild}/slack-required" ]; then
        required_content=$(cat "${build_script%.SlackBuild}/slack-required")
        
        echo "REQUIRED:" >> "$OUTPUT_FILE"
        echo "$required_content" | sed 's/^/  /' >> "$OUTPUT_FILE"
        
        echo "" >> "$OUTPUT_FILE"
    fi

    echo "" >> "$OUTPUT_FILE" # Add an empty line between entries
}

# Recursive function to process directories
process_directory() {
    local directory="$1"
    local indent="$2"
    
    # Append directory path to the output file
    echo "${indent}Directory: $directory" >> "$OUTPUT_FILE"
    
    # If a SlackBuild file exists, process it
    for slackbuild_file in "$directory"/*.SlackBuild; do
        if [[ -f $slackbuild_file ]]; then
            process_build_script "$slackbuild_file"
        fi
    done

    # Check if slack-required file exists
    if [ -e "$directory/slack-required" ]; then
        required_content=$(cat "$directory/slack-required")
        
        echo "REQUIRED:" >> "$OUTPUT_FILE"
        echo "$required_content" | sed 's/^/  /' >> "$OUTPUT_FILE"
        
        echo "" >> "$OUTPUT_FILE"
    fi
    
    # Recursively process subdirectories
    for subdir in "$directory"/*; do
        if [[ -d $subdir ]]; then
            process_directory "$subdir" "$indent  "
        fi
    done
}

# Start processing from the current directory
process_directory "." ""

# Remove empty lines before "REQUIRED" using sed
sed -i '/^REQUIRED:/ {x; s/\n//g; x}' "$OUTPUT_FILE"

echo "GFS-BUILDS.TXT file created successfully."
