#!/bin/bash
echo Building libspelling
cd ../libspelling || exit 1
source libspelling.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
