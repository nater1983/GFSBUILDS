#!/bin/bash
echo Building liblouis
cd ../liblouis  || exit 1
source liblouis.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
