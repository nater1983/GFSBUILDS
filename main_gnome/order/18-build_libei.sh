#!/bin/bash
echo Building libei
cd ../libei  || exit 1
source libei.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
