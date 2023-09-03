#!/bin/bash
echo Building dav1d
cd ../dav1d  || exit 1
source dav1d.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
