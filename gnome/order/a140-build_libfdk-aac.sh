#!/bin/bash
echo Building libfdk-aac
cd ../libfdk-aac  || exit 1
source libfdk-aac.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
