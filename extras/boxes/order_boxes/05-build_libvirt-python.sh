#!/bin/bash
echo Building libvirt-python
cd ../libvirt-python || exit 1
source libvirt-python.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
