#!/bin/bash
echo Building virglrenderer
cd ../virglrenderer || exit 1
source virglrenderer.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
