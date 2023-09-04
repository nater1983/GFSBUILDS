#!/bin/bash
echo Building spice
cd ../spice || exit 1
source spice.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
