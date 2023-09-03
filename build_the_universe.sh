#!/bin/bash

# gfs team 2023
# 
set -e

if [ "$UID" -ne 0 ];then
  echo "                               "
  echo " please run this script as root"
  echo "                               "
  echo "                               "
  exit 1
fi


D=$(pwd)
OD=order
BD=/tmp/gfs

rm -rf "$BD"
chmod +x ./*/*/*.SlackBuild
chmod +x ./*/*/*.sh
chmod +x ./*/*.sh
chmod +x ./*.sh


#cd ./BLACKLIST45/"$OD"
#./build_all.sh |& tee "$D"/build_blacklist.system.log

cd "$D"
cd ./main_gnome/"$OD"
./build_all.sh |& tee "$D"/build_main_gnome.log


cd "$D"
cd ./gnome/"$OD"
./build_all.sh |& tee "$D"/build_gnome.log


cd "$D"
cd ./gnome_soft/"$OD"
./build_all.sh |& tee "$D"/build_gnome_soft.log

exit 0


cd "$D"
cd ./gnome_builder/"$OD"
./build_all.sh |& tee "$D"/build_gnome_builder.log



cd "$D"
cd ./gnome-backgrounds-extra/"$OD"
./build_all.sh |& tee "$D"/build_backgrounds_extra.log

cd "$D"
cd ./extensions/"$OD"
./build_all.sh |& tee "$D"/build_exensions.log

cd "$D"
cd ./games/"$OD"
./build_all.sh |& tee "$D"/build_games.log

cd "$D"
cd ./extras/"$OD"
./build_all.sh |& tee "$D"/build_extras.log

cd "$D"
slackpkg new-config
cd ./doinst
./doinst.sh


cd "$D"
ldconfig
updatedb

# clean source file
rm ./*/*/*.tar.?z*
