#!/bin/bash
echo Building osinfo-db-tools
cd ../osinfo-db-tools  || exit 1
source osinfo-db-tools.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
