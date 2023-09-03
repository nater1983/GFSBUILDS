#!/bin/bash
echo Building libgweather4
cd ../libgweather4  || exit 1
source libgweather4.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
