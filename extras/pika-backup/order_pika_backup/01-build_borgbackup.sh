#!/bin/bash
echo Building borgbackup
cd ../borgbackup || exit 1
source borgbackup.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
