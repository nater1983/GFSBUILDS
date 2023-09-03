#!/bin/bash
echo Building python3-msgpack
cd ../python3-msgpack || exit 1
source python3-msgpack.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
