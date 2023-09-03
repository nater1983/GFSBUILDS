#!/bin/bash
echo Building yelp
cd ../yelp  || exit 1
source yelp.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
