#!/bin/bash
echo Building simple-scan
cd ../simple-scan  || exit 1
source simple-scan.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
