#!/bin/bash
echo Building exempi
cd ../exempi  || exit 1
source exempi.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
