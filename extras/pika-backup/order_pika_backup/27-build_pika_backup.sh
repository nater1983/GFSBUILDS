#!/bin/bash

echo Building pika-backup
cd ../pika-backup || exit 1
source pika-backup.SlackBuild
upgradepkg --install-new --reinstall
$OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
