#!/bin/bash
echo Building evolution-data-server
cd ../evolution-data-server  || exit 1
source evolution-data-server.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
