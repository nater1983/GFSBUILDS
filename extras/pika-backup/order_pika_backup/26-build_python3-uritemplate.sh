#!/bin/bash

echo Building python-uritemplate
cd ../python-uritemplate || exit 1
source python-uritemplate.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
