#!/bin/bash

# gfs team 2023
# LONG LIVE SLACKWARE (1993-2023) 
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

rm -rf "$BD" || true
chmod +x ./*/*/*.SlackBuild || true
chmod +x ./*/*/*.sh || true
chmod +x ./*/*.sh || true
chmod +x *.bash || true


cd ./BLACKLIST45/"$OD" || exit
./build_all.sh |& tee "$D"/build_blacklist.system.log



cd "$D" || exit
cd ./main_gnome/"$OD"
./build_all.sh |& tee "$D"/build_main_gnome.log



cd "$D" || exit
cd ./gnome/"$OD"
./build_all.sh |& tee "$D"/build_gnome.log



# every day I have time will add more packages
cd "$D" || exit
cd ./gnome_soft/"$OD"
./build_all.sh |& tee "$D"/build_gnome_soft.log



cd "$D" || exit
cd ./gnome_builder/"$OD"
./build_all.sh |& tee "$D"/build_gnome_builder.log


# not all extension ready for gnome-45  so far...
cd "$D" || exit
cd ./extensions/"$OD"
./build_all.sh |& tee "$D"/build_exensions.log

cd "$D" || exit 
cd ./backgrounds/"$OD"
./build_all.sh |& tee "$D"/build_backgrounds.log


#######################################################################################
# uncomment these lines to build all extras or                                        #
# you any time you want to build something specific cd to its order_package folder    #
# and ran build_all.sh                                                                #
# this way you will build and install it with all deps in the right build order.      #
#######################################################################################

#cd "$D" || exit
#cd ./extras/"$OD"
#./build_all.sh |& tee "$D"/build_extras.log
# cd "$D" || exit
#rm ./*/*/*/*.tar.?z* || true

######################################################################################
# uncomment to build all games or                                                    #
# you any time you want to build something specific cd to its order_package folder   #
# and ran build_all.sh                                                               #
# this way you will build and install it with all deps in the right build order.     #
######################################################################################
# NOTE: games are not ready yet...
# games not ready so far... no time :( #
#cd "$D" || exit
#cd ./games/"$OD"
#./build_all.sh |& tee "$D"/build_games.log
#rm ./*/*.tar.?z* || true

# configs...
cd "$D" || exit
cat blacklist.txt >> /etc/slackpkg/blacklist
cd ./doinst || exit
bash doinst
cd "$D" || exit
ldconfig || true
slackpkg new-config || true
updatedb
./GEN-GFSBUILDS.bash


# clean repo from forgoten source.tar.* file...
rm ./*/*/*.tar.?z* || true
rm ./*/*/*.deb || true
echo "Welcome to your new GNOME desktop environment on Slackware!"
    
    echo "************************************************************"
echo -e "  _____     _    ______ 
|  ___)   | |   \  ___)
| |      _| |_   \ \   
| |     /     \   > >  
| |    ( (| |) _ / /__ 
|_|   (_\_   _(_/_____)
          | |          
          |_|          "



