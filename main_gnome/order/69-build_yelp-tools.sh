#!/bin/bash
echo Building yelp-tools
cd ../yelp-tools  || exit 1
source yelp-tools.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
