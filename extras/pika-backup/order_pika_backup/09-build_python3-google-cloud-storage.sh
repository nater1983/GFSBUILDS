#!/bin/bash
echo Building python-google-cloud-storage
cd ../python-google-cloud-storage || exit 1
source python-google-cloud-storage.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
