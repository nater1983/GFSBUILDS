#!/bin/bash
echo Building libvirt-glib
cd ../libvirt-glib || exit 1
source libvirt-glib.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
