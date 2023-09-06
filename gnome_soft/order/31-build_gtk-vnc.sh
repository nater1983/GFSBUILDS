#!/bin/bash
echo Building gtk-vnc
cd ../gtk-vnc || exit 1
source gtk-vnc.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.${PKGTYPE:-txz}
