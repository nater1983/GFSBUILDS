#!/bin/bash
echo Building python3-google-crc32c
cd ../python3-google-crc32c || exit 1
source python3-google-crc32c.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
