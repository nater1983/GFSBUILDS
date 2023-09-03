#!/bin/bash
echo Building libxmlb
cd ../libxmlb  || exit 1
source libxmlb.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
