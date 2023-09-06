#!/bin/bash
echo Building blueprint-compiler
cd ../blueprint-compiler  || exit 1
source blueprint-compiler.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

