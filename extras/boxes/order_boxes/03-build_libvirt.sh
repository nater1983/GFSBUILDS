#!/bin/bash
echo Building libvirt
cd ../libvirt || exit 1
source libvirt.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
