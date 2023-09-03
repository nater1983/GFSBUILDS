#!/bin/bash
echo Building libnfs
cd ../libnfs || exit 1
source libnfs.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
