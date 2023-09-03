#!/bin/bash
echo Building libspelling
cd ../libspelling || exit 1
source libspelling.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
