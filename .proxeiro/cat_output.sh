#!/bin/bash

folder_path="."  # Use the appropriate folder path

line_to_add="\$OUTPUT/\$PRGNAM-\$VERSION-\$ARCH-\$BUILD\$TAG.\$PKGTYPE"

for file in "$folder_path"/*.sh; do
    if [[ -f "$file" ]]; then
        printf "%s\n" "$line_to_add" >> "$file"
        echo "Added line to $file"
        sed -i '/^$/d' "$file"
    fi
done

echo "All .sh files updated."

