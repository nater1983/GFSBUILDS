#!/bin/bash
echo Building libgdata
cd ../libgdata  || exit 1
source libgdata.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
