#!/bin/bash

# gfs team. 1993-2023 30 years of glory, building and re buidling... the Universe. 
# This our way... because...
# LONG LIVE SLACKWARE

OUTPUT_FILE="GFSBUILDS.TXT"

> "$OUTPUT_FILE"

date +"%H:%M:%S %d-%m-%y" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

process_build_script() {
    local build_script="$1"
    
    PRGNAM=$(awk -F= '/^PRGNAM=/{print $2}' "$build_script")
    VERSION=$(awk -F= '/^VERSION=/{print $2}' "$build_script")
    BUILD=$(awk -F= '/^BUILD=/{print $2}' "$build_script")
    TAG=$(awk -F= '/^TAG=/{print $2}' "$build_script")
    PKGTYPE=$(awk -F= '/^PKGTYPE=/{print $2}' "$build_script")

    echo "PRGNAM: $PRGNAM" >> "$OUTPUT_FILE"
    echo "VERSION: $VERSION" >> "$OUTPUT_FILE"
    echo "BUILD: $BUILD" >> "$OUTPUT_FILE"
    echo "TAG: $TAG" >> "$OUTPUT_FILE"
    echo "PKGTYPE: $PKGTYPE" >> "$OUTPUT_FILE"

    urls=$(awk '/wget\s+-c\s+http[s]?:\/\/[^\s]+/{print $NF}' "$build_script")
    if [ -n "$urls" ]; then
        echo "DOWNLOAD: $urls" >> "$OUTPUT_FILE"
    fi

    if [ -e "${build_script%.SlackBuild}/slack-required" ]; then
        required_content=$(cat "${build_script%.SlackBuild}/slack-required")
        required_content_oneline=$(echo "$required_content" | tr '\n' ' ')
        
        echo "REQUIRED: $required_content_oneline" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi

    echo "" >> "$OUTPUT_FILE" 
}

process_directory() {
    local directory="$1"
    local indent="$2"
    
    echo "${indent}Directory: $directory" >> "$OUTPUT_FILE"
    
    for slackbuild_file in "$directory"/*.SlackBuild; do
        if [[ -f $slackbuild_file ]]; then
            process_build_script "$slackbuild_file"
        fi
    done

    if [ -e "$directory/slack-required" ]; then
        required_content=$(cat "$directory/slack-required")
        required_content_oneline=$(echo "$required_content" | tr '\n' ' ')
        
        echo "REQUIRED: $required_content_oneline" >> "$OUTPUT_FILE"
        echo "" >> "$OUTPUT_FILE"
    fi
    
    for subdir in "$directory"/*; do
        if [[ -d $subdir ]]; then
            process_directory "$subdir" "$indent  "
        fi
    done
}

process_directory "." ""

echo "GFS-BUILDS.TXT file created successfully."
