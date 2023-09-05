#!/bin/bash
echo Building libheif
cd ../libheif  || exit 1
source libheif.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
