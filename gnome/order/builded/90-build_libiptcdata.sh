#!/bin/bash
echo Building libiptcdata
cd ../libiptcdata  || exit 1
source libiptcdata.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
