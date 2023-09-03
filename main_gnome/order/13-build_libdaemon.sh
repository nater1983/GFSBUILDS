#!/bin/bash
echo Building libdaemon
cd ../libdaemon  || exit 1
source libdaemon.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
