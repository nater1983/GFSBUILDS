#!/bin/bash
echo Building python-google-crc32c
cd ../python-google-crc32c || exit 1
source python-google-crc32c.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
