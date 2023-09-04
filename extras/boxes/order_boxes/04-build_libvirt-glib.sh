#!/bin/bash
echo Building libvirt-glib
cd ../libvirt-glib || exit 1
source libvirt-glib.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
