# GFS 45


> We\'re living the future so
> the present is our past.
> LONG LIVE SLACKWARE!

*Gnome from scratch*, *Gnome for Slackware* is a tool to build and maintain Gnome builds and installations in a *Slackware current* system.
The main idea is to separate Gnome builds in the repo. So developer can build 'sets' of builds. In this case its more easy to maintain packages with their deps...
Ofcourse a user who want to build all the project can execute one script and build the Universe. 

# USER mode
*STEP 1*
**prepare_cosmos.bash**
This script add some groups and permissions needed, for example avahi and colord to be builded.
If you build first time Gnome in your system then you should start from here.


*STEP 2*
**build_the_universe.bash**

This script will build and install a full Gnome 45 desktop for Slackware current
It take some hours to finish...
At the end it will call *configs.bash* script to complete Gnome set up in your installation.
When user building using build_the_universe.bash script, logs files will be stored in BUILD_LOGS folder

**configs.bash** 
Is the 3rd script wich will be called from build_the_universe.bash when an if installation finish, but you can ran it alone if you are building some sets of gnome building. This script also will call GEN-GFSBUILDS.bash, which is the creator of GFSBUILDS.TXT.

In other words if you want to build and install Gnome 45 for Slackware current for first time and you want to build from this repo:
```
./prepare_cosmos.bash
```
```
./build_the_universe.bash
```
```
./configs.bash
```

# GFSBUILDS TEMPLATES

The main Gnome folders "sets", that you must build to have a Gnome desktop are:
* BLACKLIST45
* gnome_main
* gnome
* gnome_soft

In that case you can do it manually like this.
```
cd BLACKLIST45/order
./build_all.sh
```
after that and when script finish, the same for gnome_main...
```
cd gnome_main/order
./build_all.sh
```
...do the same for *gnome* and *gnome_soft* and every other optional folder you want to build.

As you reallize in every *set* folder there is an *order/build_all.sh* script. This script will build and install all packages in that specific *set* folder in the right build order... 

### order folders

Every main source folder *set*, inside have its own **order** folder
This way we can maintain our set folders with out touching the build script.
We can update SlackBuilds versions, move a SlackBuild from one set to other set folder with out problem for building order...


#### BLACKLIST45

This folder is very importand since we are building and not using slackpkg+, so no priority for slackpkg updates...
This folder must have packages that after installation should be mentioned in `/etc/slackpkg/blacklist`
this way user have the control and when  Slackware current upgrade for example gtk4 or mojs* we can simple remove them from BLACKLIST45 folder to removed folder
also delete them from our blacklist.
These files dont start from 01 but 1 so they will always be on top of build order in every folder they (if) exist ;)



###### TODO

...
