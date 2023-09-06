#!/bin/bash
echo Building libgxps
cd ../libgxps  || exit 1
source libgxps.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
