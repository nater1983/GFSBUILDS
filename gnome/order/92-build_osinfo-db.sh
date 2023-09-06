#!/bin/bash
echo Building osinfo-db
cd ../osinfo-db  || exit 1
source osinfo-db.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
