#!/bin/bash
echo Building lxml
cd ../lxml  || exit 1
source lxml.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
