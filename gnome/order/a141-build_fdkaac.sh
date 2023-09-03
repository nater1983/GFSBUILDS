#!/bin/bash
echo Building fdkaac
cd ../fdkaac  || exit 1
source fdkaac.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
