#!/bin/bash
echo Building geoclue2
cd ../geoclue2  || exit 1
source geoclue2.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
