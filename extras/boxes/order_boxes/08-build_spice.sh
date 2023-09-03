#!/bin/bash
echo Building spice
cd ../spice || exit 1
source spice.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
