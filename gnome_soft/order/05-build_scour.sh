#!/bin/bash
echo Building scour
cd ../scour  || exit 1
source scour.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

