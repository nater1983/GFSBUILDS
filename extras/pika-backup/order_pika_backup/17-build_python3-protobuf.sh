#!/bin/bash
echo Building python-protobuf
cd ../python-protobuf || exit 1
source python-protobuf.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
