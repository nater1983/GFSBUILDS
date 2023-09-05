#!/bin/bash
echo Building libpst
cd ../libpst  || exit 1
source libpst.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
