#!/bin/bash
echo Building libyuv
cd ../libyuv  || exit 1
source libyuv.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
