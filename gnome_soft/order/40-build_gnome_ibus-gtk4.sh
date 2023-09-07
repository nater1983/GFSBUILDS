#!/bin/bash
PP=ibus-gtk4
echo "$PP"
cd ../"$PP"  || exit 1
source ibus-gtk4.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

