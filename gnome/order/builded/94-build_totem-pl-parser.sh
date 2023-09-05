#!/bin/bash
echo Building totem-pl-parser
cd ../totem-pl-parser  || exit 1
source totem-pl-parser.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
