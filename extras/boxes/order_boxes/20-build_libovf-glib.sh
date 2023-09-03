#!/bin/bash
echo Building libovf-glib
cd ../libovf-glib || exit 1
source libovf-glib.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PKGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
