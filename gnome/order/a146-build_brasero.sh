#!/bin/bash
echo Building brasero
cd ../brasero  || exit 1
source brasero.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
