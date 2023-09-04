#!/bin/bash
echo Building python3-scour
cd ../python3-scour  || exit 1
source python3-scour.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

