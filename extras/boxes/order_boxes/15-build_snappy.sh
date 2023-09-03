#!/bin/bash
echo Building snappy
cd ../snappy || exit 1
source snappy.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
