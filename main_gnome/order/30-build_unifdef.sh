#!/bin/bash
echo Building unifdef
cd ../unifdef  || exit 1
source unifdef.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
