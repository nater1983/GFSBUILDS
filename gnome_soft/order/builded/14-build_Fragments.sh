#!/bin/bash
echo Building Fragments
cd ../Fragments  || exit 1
source Fragments.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

