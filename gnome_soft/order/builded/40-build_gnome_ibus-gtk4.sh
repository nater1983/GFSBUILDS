#!/bin/bash
PP=ibus-gtk4
echo "$PP"
cd ../"$PP"  || exit 1
source ibus.SlackBuild
upgradepkg --install-new --reinstall $TMP/$PRGNAM-$VERSION-$ARCH-$BUILD-$TAG.txz

