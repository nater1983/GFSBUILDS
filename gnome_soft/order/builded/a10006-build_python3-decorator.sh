#!/bin/bash
PP=python3-decorator
echo "$PP"
cd ../python3-decorator || exit 1
source python3-decorator.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
