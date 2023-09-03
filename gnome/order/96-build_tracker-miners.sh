#!/bin/bash
echo Building tracker-miners
cd ../tracker-miners  || exit 1
source tracker-miners.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
