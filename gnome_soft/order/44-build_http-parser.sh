#!/bin/bash
echo Building http-parser
cd ../http-parser  || exit 1
source http-parser.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
