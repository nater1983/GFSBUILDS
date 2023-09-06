#!/bin/bash
echo Building libshumate
cd ../libshumate  || exit 1
source libshumate.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
