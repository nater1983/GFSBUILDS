#!/bin/bash
echo Building evolution
cd ../evolution  || exit 1
source evolution.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
