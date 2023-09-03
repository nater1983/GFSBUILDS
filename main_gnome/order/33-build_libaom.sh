#!/bin/bash
echo Building libaom
cd ../libaom  || exit 1
source libaom.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
