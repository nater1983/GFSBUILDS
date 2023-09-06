#!/bin/bash
echo Building Plots
cd ../Plots  || exit 1
source Plots.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE

