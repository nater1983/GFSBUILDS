#!/bin/bash
echo Building phodav
cd ../phodav || exit 1
source phodav.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
