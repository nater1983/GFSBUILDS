#!/bin/bash
echo Building librest
cd ../librest  || exit 1
source librest.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
