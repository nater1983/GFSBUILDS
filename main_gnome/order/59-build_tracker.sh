#!/bin/bash
echo Building tracker
cd ../tracker  || exit 1
source tracker.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
