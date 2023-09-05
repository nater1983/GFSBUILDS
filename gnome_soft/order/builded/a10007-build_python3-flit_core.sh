#!/bin/bash
PP=python3-flit_core
echo "$PP" 
cd ../python3-flit_core || exit 1
source python3-flit_core.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
