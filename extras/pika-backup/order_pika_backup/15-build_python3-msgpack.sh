#!/bin/bash
echo Building python-msgpack
cd ../python-msgpack || exit 1
source python-msgpack.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
