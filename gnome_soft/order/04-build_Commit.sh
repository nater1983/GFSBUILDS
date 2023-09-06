#!/bin/bash
echo Building Commit
cd ../Commit  || exit 1
source Commit.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

