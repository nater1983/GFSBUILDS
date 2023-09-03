#!/bin/bash
echo Building vde2
cd ../vde2 || exit 1
source vde2.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
