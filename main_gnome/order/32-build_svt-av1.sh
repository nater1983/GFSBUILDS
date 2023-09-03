#!/bin/bash
echo Building svt-av1
cd ../svt-av1  || exit 1
source svt-av1.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
