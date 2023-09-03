#!/bin/bash
echo Building yelp-xsl
cd ../yelp-xsl  || exit 1
source yelp-xsl.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
