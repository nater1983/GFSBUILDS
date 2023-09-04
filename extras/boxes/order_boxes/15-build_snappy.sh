#!/bin/bash
echo Building snappy
cd ../snappy || exit 1
source snappy.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
