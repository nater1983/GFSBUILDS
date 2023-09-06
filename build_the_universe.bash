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

rm -rf "$BD"
chmod +x ./*/*/*.SlackBuild
chmod +x ./*/*/*.sh
chmod +x ./*/*.sh
chmod +x ./*.sh


cd ./BLACKLIST45/"$OD"
./build_all.sh |& tee "$D"/build_blacklist.system.log
cd "$D"


cd "$D"
cd ./main_gnome/"$OD"
./build_all.sh |& tee "$D"/build_main_gnome.log
cd "$D"


cd "$D"
cd ./gnome/"$OD"
./build_all.sh |& tee "$D"/build_gnome.log
cd "$D"


# every day I have time will add more packages
cd "$D"
cd ./gnome_soft/"$OD"
./build_all.sh |& tee "$D"/build_gnome_soft.log
cd "$D"


cd "$D"
cd ./gnome_builder/"$OD"
./build_all.sh |& tee "$D"/build_gnome_builder.log


# not all extension ready for gnome-45  so far...
cd "$D"
cd ./extensions/"$OD"
./build_all.sh |& tee "$D"/build_exensions.log

cd "$D"
cd ./backgrounds/"$OD"
./build_all.sh |& tee "$D"/build_backgrounds.log


#######################################################################################
# uncomment these lines to build all extras or                                        #
# you any time you want to build something specific cd to its order_package folder    #
# and ran build_all.sh                                                                #
# this way you will build and install it with all deps in the right build order.      #
#######################################################################################

#cd "$D"
#cd ./extras/"$OD"
#./build_all.sh |& tee "$D"/build_extras.log
#rm ./*/*/*.tar.?z* 

######################################################################################
# uncomment to build all games or                                                    #
# you any time you want to build something specific cd to its order_package folder   #
# and ran build_all.sh                                                               #
# this way you will build and install it with all deps in the right build order.     #
######################################################################################

# games not ready so far... no time :( #
#cd "$D"
#cd ./games/"$OD"
#./build_all.sh |& tee "$D"/build_games.log
#rm ./*/*/*.tar.?z*

cd "$D"
slackpkg new-config
cd ./doinst
./doinst


cd "$D"
ldconfig
updatedb

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

# clean repo from forgoten source.tar.* file...
rm ./*/*/*.tar.?z*
rm ./*/*/*.deb
