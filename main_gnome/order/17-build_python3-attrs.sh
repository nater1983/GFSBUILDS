#!/bin/bash
echo Building python3-attrs
cd ../python3-attrs || exit 1
source python3-attrs.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
