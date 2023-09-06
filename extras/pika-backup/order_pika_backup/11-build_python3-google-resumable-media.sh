#!/bin/bash
echo Building python-google-resumable-media
cd ../python-google-resumable-media || exit 1
source python-google-resumable-media.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
