#!/bin/bash
echo Building evince
cd ../evince  || exit 1
source evince.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
