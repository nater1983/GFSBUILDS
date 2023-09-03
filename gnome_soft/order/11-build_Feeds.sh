#!/bin/bash
echo Building Feeds
cd ../Feeds  || exit 1
source Feeds.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

