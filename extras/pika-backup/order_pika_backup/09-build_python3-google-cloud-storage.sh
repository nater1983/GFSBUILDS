#!/bin/bash
echo Building python3-google-cloud-storage
cd ../python3-google-cloud-storage || exit 1
source python3-google-cloud-storage.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
