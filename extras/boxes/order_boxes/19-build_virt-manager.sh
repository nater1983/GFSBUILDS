#!/bin/bash
echo Building virt-manager
cd ../virt-manager || exit 1
source virt-manager.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
