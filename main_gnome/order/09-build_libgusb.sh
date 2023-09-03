#!/bin/bash
echo Building libgusb
cd ../libgusb  || exit 1
source libgusb.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
