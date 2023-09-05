#!/bin/bash
echo Building libgedit-amtk
cd ../libgedit-amtk  || exit 1
source libgedit-amtk.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
