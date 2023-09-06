#!/bin/bash
echo Building libdazzle
cd ../libdazzle  || exit 1
source libdazzle.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
