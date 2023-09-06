#!/bin/bash
echo Building python3-freetype
cd ../python3-freetype  || exit 1
source python3-freetype.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
