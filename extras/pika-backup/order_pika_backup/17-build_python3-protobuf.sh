#!/bin/bash
echo Building python3-protobuf
cd ../python3-protobuf || exit 1
source python3-protobuf.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
