#!/bin/bash
echo Building python-google-cloud-core
cd ../python-google-cloud-core || exit 1
source python-google-cloud-core.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
