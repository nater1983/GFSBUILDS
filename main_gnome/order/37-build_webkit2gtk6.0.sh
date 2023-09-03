#!/bin/bash
echo Building webkit2gtk6.0
cd ../webkit2gtk6.0  || exit 1
source webkit2gtk6.0.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
