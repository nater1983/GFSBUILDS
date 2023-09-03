#!/bin/bash
echo Building zbar
cd ../zbar  || exit 1
source zbar.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
