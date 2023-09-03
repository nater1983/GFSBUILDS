#!/bin/bash
echo Building python3-google-resumable-media
cd ../python3-google-resumable-media || exit 1
source python3-google-resumable-media.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
