#!/bin/bash
echo Building python3-lark
cd ../python3-lark  || exit 1
source python3-lark.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

