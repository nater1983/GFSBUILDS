#!/bin/bash
echo Building blocaled
cd ../blocaled  || exit 1
source blocaled.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
