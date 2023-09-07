#!/bin/bash
PP=python3-piexif
echo "$PP"
cd ../"$PP"  || exit 1
source "$PP".SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

