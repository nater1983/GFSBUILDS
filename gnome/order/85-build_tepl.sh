#!/bin/bash
echo Building tepl
cd ../tepl  || exit 1
source tepl.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
