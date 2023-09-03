#!/bin/bash
echo Building usbredir
cd ../usbredir || exit 1
source usbredir.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
