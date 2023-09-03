#!/bin/bash
echo Building device-tree-compiler
cd ../device-tree-compiler || exit 1
source device-tree-compiler.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
