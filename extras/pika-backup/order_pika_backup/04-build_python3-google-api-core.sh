#!/bin/bash
echo Building python-google-api-core
cd ../python-google-api-core || exit 1
source python-google-api-core.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
