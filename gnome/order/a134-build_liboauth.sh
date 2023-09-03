#!/bin/bash
echo Building liboauth
cd ../liboauth  || exit 1
source liboauth.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
