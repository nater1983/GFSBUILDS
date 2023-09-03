#!/bin/bash

line_to_add='$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE'

# Escape special characters in the line
line_to_add_escaped=$(printf '%s\n' "$line_to_add" | sed -e 's/[\/&]/\\&/g')

for file in *.sh; do
    echo "$line_to_add_escaped" >> "$file"
done

$OUTPUT\/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
