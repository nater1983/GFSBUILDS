#!/bin/bash
PP=python3-construct
echo "$PP" 
cd ../python3-construct || exit 1
source python3-construct.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
