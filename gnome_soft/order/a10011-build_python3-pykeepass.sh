#!/bin/bash
PP=python3-pykeepass
echo "$PP" 
cd ../python3-pykeepass || exit 1
source python3-pykeepass.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
