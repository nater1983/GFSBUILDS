# GFS 45


> We\'re living the future so
> the present is our past.
> LONG LIVE SLACKWARE!

*Gnome from scratch*, *Gnome for Slackware*
## prepare_cosmos.sh
This script add some groups and permissions needed for example avahi to be builded.
If  you dont want avahi etc in your system, just dnot run this script and remove .sh extension for avahi script from order folder
```
  mv  main_gnome/order/14-build_avahi.sh main_gnome/order/14-build_avahi
```
every file in an order folder without sh at the end will no try to build.

## build_the_universe.sh

This script will build and install a Gnome 45 desktop for Slackware current

**Main source folders**:

* BLACKLIST45
* gnome
* gnome_builder
* backgrounds
* other folders (games,net_web_apps etc..)


### order_folders

Every main source folder inside have its own order_folder
This way we can maintain our main source folders with out touching the build script.
We can update SlackBuilds versions, move a SlackBuild from one folder to other with out problem for building order... Also have separate error.log files for every main source folder.
I have to mention that this way we can also commend a main source folder from build_the_universe.sh script and it will not be builded. backgrounds for example...

#### BLACKLIST45

This folder is very importand since we are building and not using slackpkg+
This folder must have packages that after installation should be mentioned in `/etc/slackpkg/blacklist`
this way user have the control and when  Slackware current upgrade for example gtk4 or mojs* we can simple remove them from BLACKLIST45 folder to removed folder
also delete them from our blacklist.
These files dont start from 01 but 1 so they will always be on top of build order in every folder they (if) exist ;)

##### doinst
SlackBuilds that not having new.configs or some specially doinst.sh then now dont need to followed by their doinst.sh, at the end of the day one command for all these is enough... 


##### examples
1. Lest say that gjs upgraded in stock slackware to the version we need for Gnome 45
just mv gjs SlackBuild folder from BLACKLIST45 to removed folder
and 5-build_gjs.sh from order_blacklist to order_removed.
Thats all. 
2. Lets say that we update some SlackBuilds from beta version to 45.
Just do it as always edit SlackBuilds and thats all.
3. Lest say that we have have some extra deps for a gnome package, assume gnome-terminal requires foo.tar.gz as dep.
Just create a source foo SlackBuild folder in the same folder as gnome terminal assume gnome
and a foo.sh file in order_gnome with the same number like gnome-terminal plus an **a** (72-build_afoo.sh)
Thats all foo will be builded just before gnome-terminal as it its dep ;)
###### TODO

...
