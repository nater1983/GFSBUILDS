#!/bin/bash
echo Building Curtail
cd ../Curtail  || exit 1
source Curtail.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

