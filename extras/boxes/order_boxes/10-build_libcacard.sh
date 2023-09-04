#!/bin/bash
echo Building libcacard
cd ../libcacard || exit 1
source libcacard.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
