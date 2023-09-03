#!/bin/bash
echo Building bubblewrap
cd ../bubblewrap  || exit 1
source bubblewrap.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
