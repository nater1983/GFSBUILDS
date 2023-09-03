#!/bin/bash
echo Building python3-semantic_version
cd ../python3-semantic_version || exit 1
source python3-semantic_version.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
