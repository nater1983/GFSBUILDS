#!/bin/bash
echo Building Endeavour
cd ../Endeavour  || exit 1
source Endeavour.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

