#!/bin/bash
echo Building Junction
cd ../Junction  || exit 1
source Junction.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

