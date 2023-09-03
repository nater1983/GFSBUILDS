#!/bin/bash
echo Building avahi
cd ../avahi  || exit 1
source avahi.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
