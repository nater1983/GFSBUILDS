#!/bin/bash
echo Building NetworkManager-openvpn-gtk4
cd ../NetworkManager-openvpn-gtk4  || exit 1
source NetworkManager-openvpn-gtk4.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

