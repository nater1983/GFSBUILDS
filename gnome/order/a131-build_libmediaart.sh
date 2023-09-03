#!/bin/bash
echo Building libmediaart
cd ../libmediaart  || exit 1
source libmediaart.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
