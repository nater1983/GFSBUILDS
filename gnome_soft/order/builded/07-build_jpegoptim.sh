#!/bin/bash
echo Building jpegoptim
cd ../jpegoptim  || exit 1
source jpegoptim.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

