#!/bin/bash
echo Building libostree
cd ../libostree  || exit 1
source libostree.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
