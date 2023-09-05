#!/bin/bash
echo Building seahorse
cd ../seahorse  || exit 1
source seahorse.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
