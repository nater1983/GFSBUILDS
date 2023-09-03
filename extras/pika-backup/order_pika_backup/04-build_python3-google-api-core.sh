#!/bin/bash
echo Building python3-google-api-core
cd ../python3-google-api-core || exit 1
source python3-google-api-core.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
