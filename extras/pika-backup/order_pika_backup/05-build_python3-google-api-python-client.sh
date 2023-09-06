#!/bin/bash
echo Building python-google-api-python-client
cd ../python-google-api-python-client || exit 1
source python-google-api-python-client.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
