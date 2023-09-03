#!/bin/bash
echo Building spice-protocol
cd ../spice-protocol || exit 1
source spice-protocol.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
