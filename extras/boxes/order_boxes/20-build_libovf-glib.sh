#!/bin/bash
echo Building libovf-glib
cd ../libovf-glib || exit 1
source libovf-glib.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
