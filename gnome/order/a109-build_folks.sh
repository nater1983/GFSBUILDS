#!/bin/bash
echo Building folks
cd ../folks  || exit 1
source folks.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
