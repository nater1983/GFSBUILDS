#!/bin/bash
echo Building libdmapsharing
cd ../libdmapsharing  || exit 1
source libdmapsharing.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
