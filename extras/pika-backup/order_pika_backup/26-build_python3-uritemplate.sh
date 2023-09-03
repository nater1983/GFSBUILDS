#!/bin/bash

echo Building python3-uritemplate
cd ../python3-uritemplate || exit 1
source python3-uritemplate.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
