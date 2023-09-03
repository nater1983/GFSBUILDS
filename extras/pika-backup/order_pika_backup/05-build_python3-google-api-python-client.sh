#!/bin/bash
echo Building python3-google-api-python-client
cd ../python3-google-api-python-client || exit 1
source python3-google-api-python-client.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
