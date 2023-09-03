#!/bin/bash
echo Building wpebackend-fdo
cd ../wpebackend-fdo  || exit 1
source wpebackend-fdo.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
