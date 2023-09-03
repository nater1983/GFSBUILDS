#!/bin/bash
echo Building snapshot
cd ../snapshot  || exit 1
source snapshot.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
