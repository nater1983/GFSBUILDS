#!/bin/bash
cd ../pangomm || exit 1

source pangomm.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

