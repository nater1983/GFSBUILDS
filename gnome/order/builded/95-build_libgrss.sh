#!/bin/bash
echo Building libgrss
cd ../libgrss  || exit 1
source libgrss.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
