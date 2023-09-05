#!/bin/bash
echo Building highlight
cd ../highlight  || exit 1
source highlight.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
