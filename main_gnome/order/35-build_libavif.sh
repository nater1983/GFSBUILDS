#!/bin/bash
echo Building libavif
cd ../libavif  || exit 1
source libavif.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
