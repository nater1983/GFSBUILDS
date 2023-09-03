#!/bin/bash
echo Building virt-manager
cd ../virt-manager || exit 1
source virt-manager.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
