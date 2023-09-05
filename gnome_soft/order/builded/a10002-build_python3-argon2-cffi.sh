#!/bin/bash
PP=python3-argon2-cffi
echo "$PP" 
cd ../python3-argon2-cffi || exit 1
source python3-argon2-cffi.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
