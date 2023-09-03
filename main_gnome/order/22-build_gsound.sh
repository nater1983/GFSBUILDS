#!/bin/bash
echo Building gsound
cd ../gsound  || exit 1
source gsound.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
