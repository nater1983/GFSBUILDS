#!/bin/bash
echo Building xvfb-run
cd ../xvfb-run  || exit 1
source xvfb-run.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
