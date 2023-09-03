#!/bin/bash
echo Building libwpe
cd ../libwpe  || exit 1
source libwpe.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
