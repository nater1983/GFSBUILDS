#!/bin/bash
PP=gnome-shell-extension-cpufreq
echo 
cd ../gnome-shell-extension-cpufreq || exit 1
source gnome-shell-extension-cpufreq.SlackBuild
upgradepkg --install-new --reinstall $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.$PKGTYPE
