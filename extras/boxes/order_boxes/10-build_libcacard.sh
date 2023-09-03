#!/bin/bash
echo Building libcacard
cd ../libcacard || exit 1
source libcacard.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
