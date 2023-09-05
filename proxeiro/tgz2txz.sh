#!/bin/bash

# Find and replace PKGTYPE in all *.SlackBuild files
find ./ -type f -name "*.SlackBuild" -print0 | while IFS= read -r -d '' build_script; do
    # Check if PKGTYPE contains 'tgz'
    if grep -q '^PKGTYPE=.*tgz' "$build_script"; then
        # Replace PKGTYPE with 'txz'
        sed -i 's/^PKGTYPE=.*/PKGTYPE="txz"/' "$build_script"
        echo "Modified: $build_script"
    fi
done
