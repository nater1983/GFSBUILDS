#!/bin/bash
echo Building Font-Downloader
cd ../Font-Downloader  || exit 1
source Font-Downloader.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

