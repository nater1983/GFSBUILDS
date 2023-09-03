#!/bin/bash
echo Building webkit2gtk4.1
cd ../webkit2gtk4.1  || exit 1
source webkit2gtk4.1.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
