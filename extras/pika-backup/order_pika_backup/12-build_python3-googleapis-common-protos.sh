#!/bin/bash
echo Building python3-googleapis-common-protos
cd ../python3-googleapis-common-protos || exit 1
source python3-googleapis-common-protos.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
