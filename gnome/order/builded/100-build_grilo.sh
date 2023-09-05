#!/bin/bash
echo Building grilo
cd ../grilo  || exit 1
source grilo.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
