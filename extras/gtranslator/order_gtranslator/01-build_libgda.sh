#!/bin/bash
echo Building libgda
cd ../libgda || exit 1
source libgda.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
