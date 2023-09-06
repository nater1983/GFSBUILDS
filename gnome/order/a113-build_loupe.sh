#!/bin/bash
echo Building loupe
cd ../loupe  || exit 1
source loupe.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
