#!/bin/bash
groupadd -g 303 colord
useradd -d /var/lib/colord -u 303 -g colord -s /bin/false colord

groupadd -g 214 avahi
useradd -u 214 -g 214 -c Avahi -d /dev/null -s /bin/false avahi