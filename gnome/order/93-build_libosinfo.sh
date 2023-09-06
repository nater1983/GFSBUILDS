#!/bin/bash
echo Building libosinfo
cd ../libosinfo  || exit 1
source libosinfo.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
