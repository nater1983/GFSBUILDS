#!/bin/bash
echo Building python3-google-cloud-core
cd ../python3-google-cloud-core || exit 1
source python3-google-cloud-core.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
