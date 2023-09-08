#!/bin/bash

D=$(pwd)
# configs...
cd "$D" || exit
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
rm */*/*.zip || true
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



