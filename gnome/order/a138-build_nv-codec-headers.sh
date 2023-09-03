#!/bin/bash
echo Building nv-codec-headers
cd ../nv-codec-headers  || exit 1
source nv-codec-headers.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
