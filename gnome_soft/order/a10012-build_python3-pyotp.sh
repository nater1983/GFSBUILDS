#!/bin/bash
PP=python3-pyotp
echo "$PP" 
cd ../python3-pyotp || exit 1
source python3-pyotp.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
