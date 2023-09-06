#!/bin/bash
echo Building gom
cd ../gom  || exit 1
source gom.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
