#!/bin/bash
echo Building gspell
cd ../gspell  || exit 1
source gspell.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
