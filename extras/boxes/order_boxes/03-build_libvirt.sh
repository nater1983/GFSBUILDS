#!/bin/bash
echo Building libvirt
cd ../libvirt || exit 1
source libvirt.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
