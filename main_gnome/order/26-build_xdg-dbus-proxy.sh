#!/bin/bash
echo Building xdg-dbus-proxy
cd ../xdg-dbus-proxy  || exit 1
source xdg-dbus-proxy.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
