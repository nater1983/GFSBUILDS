#!/bin/bash
echo Building Collision
cd ../Collision  || exit 1
source Collision.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
