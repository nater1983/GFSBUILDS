#!/bin/bash
PP=python3-installer
echo "$PP" 
cd ../python3-installer || exit 1
source python3-installer.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
