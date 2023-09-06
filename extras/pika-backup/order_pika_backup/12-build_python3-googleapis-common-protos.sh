#!/bin/bash
echo Building python-googleapis-common-protos
cd ../python-googleapis-common-protos || exit 1
source python-googleapis-common-protos.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
