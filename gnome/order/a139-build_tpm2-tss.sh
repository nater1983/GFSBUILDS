#!/bin/bash
echo Building tpm2-tss
cd ../tpm2-tss  || exit 1
source tpm2-tss.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
